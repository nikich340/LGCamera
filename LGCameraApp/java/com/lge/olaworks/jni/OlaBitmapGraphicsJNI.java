package com.lge.olaworks.jni;

import android.graphics.Bitmap;
import com.lge.camera.util.CamLog;
import com.lge.olaworks.datastruct.JOlaBitmap;
import com.lge.olaworks.define.Ola_Genernal.Ola_JniLabrary;

public class OlaBitmapGraphicsJNI {
    private static final String TAG = "CameraApp";

    public static native int mirrorYBitmap(Bitmap bitmap);

    public static native int rgbBitmapToYuv(Bitmap bitmap, byte[] bArr);

    public static native byte[] rotateYuv(byte[] bArr, int i, int i2, int i3);

    public static native int zoomInJOlaBitmap(JOlaBitmap jOlaBitmap, JOlaBitmap jOlaBitmap2, float f);

    static {
        try {
            System.loadLibrary(Ola_JniLabrary.OLA_JNI_LIB);
        } catch (SecurityException se) {
            CamLog.i(TAG, "SecurityException", se);
        } catch (UnsatisfiedLinkError ule) {
            CamLog.i(TAG, "UnsatisfiedLinkError", ule);
        } finally {
            CamLog.i(TAG, "OlaBitmapGraphicsJNI-end");
        }
    }
}
