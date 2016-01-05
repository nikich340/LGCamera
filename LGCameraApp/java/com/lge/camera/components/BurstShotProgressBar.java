package com.lge.camera.components;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.lge.olaworks.library.FaceDetector;

public class BurstShotProgressBar extends ImageView {
    public static final int FORWARD = 0;
    public static final int REVERSE = 1;
    public final String TAG;
    private int mCurs;
    private int mDirection;
    private int mDrawWidth;
    private int mHeight;
    private int mMax;
    private int mPadding;
    private float mStep;
    private int mWidth;

    public BurstShotProgressBar(Context context) {
        super(context);
        this.TAG = FaceDetector.TAG;
        this.mMax = 20;
        this.mPadding = FORWARD;
        this.mCurs = FORWARD;
        this.mDirection = FORWARD;
    }

    public BurstShotProgressBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = FaceDetector.TAG;
        this.mMax = 20;
        this.mPadding = FORWARD;
        this.mCurs = FORWARD;
        this.mDirection = FORWARD;
    }

    public void initBurstShotProgressBar(int width, int height, int maxCount) {
        this.mWidth = width;
        this.mHeight = height;
        this.mMax = maxCount;
        this.mDrawWidth = this.mWidth - (this.mPadding * 2);
        this.mStep = ((float) this.mMax) / ((float) this.mDrawWidth);
    }

    public int getMax() {
        return this.mMax;
    }

    public void setDirection(int direction) {
        this.mDirection = direction;
    }

    public void setProgress(int value) {
        if (value > this.mMax) {
            value = this.mMax;
        }
        this.mCurs = value;
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        int value = (int) (((float) this.mCurs) / this.mStep);
        if (this.mDirection == 0) {
            canvas.clipRect(FORWARD, FORWARD, value, this.mHeight);
        } else {
            canvas.clipRect(this.mDrawWidth - value, FORWARD, this.mDrawWidth, this.mHeight);
        }
        super.onDraw(canvas);
    }
}
