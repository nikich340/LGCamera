package com.lge.media;

import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;

public class CamcorderProfileEx {
    public static final int QUALITY_1080P = 6;
    public static final int QUALITY_2160P = 8;
    public static final int QUALITY_480P = 4;
    public static final int QUALITY_4kDCI = 13;
    public static final int QUALITY_4kUHD = 8;
    public static final int QUALITY_720P = 5;
    public static final int QUALITY_CIF = 3;
    public static final int QUALITY_FWVGA = 12;
    public static final int QUALITY_HEVC1080P = 15;
    public static final int QUALITY_HEVC4kDCI = 17;
    public static final int QUALITY_HEVC4kUHD = 16;
    public static final int QUALITY_HEVC720P = 14;
    public static final int QUALITY_HFR720P = 2003;
    public static final int QUALITY_HIGH = 1;
    public static final int QUALITY_HIGH_SPEED_1080P = 2004;
    public static final int QUALITY_HIGH_SPEED_480P = 2002;
    public static final int QUALITY_HIGH_SPEED_720P = 2003;
    public static final int QUALITY_HIGH_SPEED_HIGH = 2001;
    private static final int QUALITY_HIGH_SPEED_LIST_END = 2004;
    private static final int QUALITY_HIGH_SPEED_LIST_START = 2000;
    public static final int QUALITY_HIGH_SPEED_LOW = 2000;
    private static final int QUALITY_LIST_END = 17;
    private static final int QUALITY_LIST_START = 0;
    public static final int QUALITY_LOW = 0;
    public static final int QUALITY_QCIF = 2;
    public static final int QUALITY_QVGA = 7;
    public static final int QUALITY_TIME_LAPSE_1080P = 1006;
    public static final int QUALITY_TIME_LAPSE_2160P = 1008;
    public static final int QUALITY_TIME_LAPSE_480P = 1004;
    public static final int QUALITY_TIME_LAPSE_720P = 1005;
    public static final int QUALITY_TIME_LAPSE_CIF = 1003;
    public static final int QUALITY_TIME_LAPSE_FWVGA = 1009;
    public static final int QUALITY_TIME_LAPSE_HIGH = 1001;
    private static final int QUALITY_TIME_LAPSE_LIST_END = 1012;
    private static final int QUALITY_TIME_LAPSE_LIST_START = 1000;
    public static final int QUALITY_TIME_LAPSE_LOW = 1000;
    public static final int QUALITY_TIME_LAPSE_QCIF = 1002;
    public static final int QUALITY_TIME_LAPSE_QVGA = 1007;
    public static final int QUALITY_TIME_LAPSE_VGA = 1011;
    public static final int QUALITY_TIME_LAPSE_WQVGA = 1012;
    public static final int QUALITY_TIME_LAPSE_WVGA = 1010;
    public static final int QUALITY_VGA = 10;
    public static final int QUALITY_WQVGA = 11;
    public static final int QUALITY_WVGA = 9;
    public int audioBitRate;
    public int audioChannels;
    public int audioCodec;
    public int audioSampleRate;
    public int duration;
    public int fileFormat;
    public int quality;
    public int videoBitRate;
    public int videoCodec;
    public int videoFrameHeight;
    public int videoFrameRate;
    public int videoFrameWidth;

    private static final native CamcorderProfileEx native_get_camcorder_profile(int i, int i2);

    private static final native boolean native_has_camcorder_profile(int i, int i2);

    private static final native void native_init();

    public static CamcorderProfileEx get(int quality) {
        int numberOfCameras = Camera.getNumberOfCameras();
        CameraInfo cameraInfo = new CameraInfo();
        for (int i = QUALITY_LOW; i < numberOfCameras; i += QUALITY_HIGH) {
            Camera.getCameraInfo(i, cameraInfo);
            if (cameraInfo.facing == 0) {
                return get(i, quality);
            }
        }
        return null;
    }

    public static CamcorderProfileEx get(int cameraId, int quality) {
        if ((quality >= 0 && quality <= QUALITY_LIST_END) || ((quality >= QUALITY_TIME_LAPSE_LOW && quality <= QUALITY_TIME_LAPSE_WQVGA) || (quality >= QUALITY_HIGH_SPEED_LOW && quality <= QUALITY_HIGH_SPEED_LIST_END))) {
            return native_get_camcorder_profile(cameraId, quality);
        }
        throw new IllegalArgumentException("Unsupported quality level: " + quality);
    }

    public static boolean hasProfile(int quality) {
        int numberOfCameras = Camera.getNumberOfCameras();
        CameraInfo cameraInfo = new CameraInfo();
        for (int i = QUALITY_LOW; i < numberOfCameras; i += QUALITY_HIGH) {
            Camera.getCameraInfo(i, cameraInfo);
            if (cameraInfo.facing == 0) {
                return hasProfile(i, quality);
            }
        }
        return false;
    }

    public static boolean hasProfile(int cameraId, int quality) {
        return native_has_camcorder_profile(cameraId, quality);
    }

    static {
        System.loadLibrary("hook_jni");
        native_init();
    }

    private CamcorderProfileEx(int duration, int quality, int fileFormat, int videoCodec, int videoBitRate, int videoFrameRate, int videoWidth, int videoHeight, int audioCodec, int audioBitRate, int audioSampleRate, int audioChannels) {
        this.duration = duration;
        this.quality = quality;
        this.fileFormat = fileFormat;
        this.videoCodec = videoCodec;
        this.videoBitRate = videoBitRate;
        this.videoFrameRate = videoFrameRate;
        this.videoFrameWidth = videoWidth;
        this.videoFrameHeight = videoHeight;
        this.audioCodec = audioCodec;
        this.audioBitRate = audioBitRate;
        this.audioSampleRate = audioSampleRate;
        this.audioChannels = audioChannels;
    }
}
