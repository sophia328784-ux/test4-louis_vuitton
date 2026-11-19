package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.sightcall.universal.R;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Frame;
import net.rtccloud.sdk.Participant;
import net.rtccloud.sdk.VideoConsumer;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.ScaleType;

/* JADX INFO: loaded from: classes3.dex */
public class MyVideoConsumerThumbnailView extends View implements VideoConsumer {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.VIDEO_CONSUMER);
    private Bitmap bitmap;
    private final Paint bitmapPaint;
    private final RectF bitmapRect;
    private Call call;
    private Drawable emptyDrawable;
    private final RectF emptyDrawableBounds;
    private final Paint emptyPaint;
    private boolean isStarted;
    private final Paint labelBackgroundPaint;
    private float labelExtraPadding;
    private float labelRadius;
    private final TextPaint labelTextPaint;
    private final LabelWrapper labelWrapper;
    private Participant participant;
    private final Runnable visibilityLayoutInvalidate;
    private String who;

    public MyVideoConsumerThumbnailView(Context context) {
        super(context);
        this.labelWrapper = new LabelWrapper(this, 0);
        this.bitmapRect = new RectF();
        this.bitmapPaint = new Paint();
        int i2 = 1;
        this.emptyPaint = new Paint(i2) { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.1
            {
                setColor(1140850688);
            }
        };
        this.emptyDrawableBounds = new RectF();
        this.labelTextPaint = new TextPaint(i2) { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.2
            {
                setColor(-1);
                setTextAlign(Paint.Align.CENTER);
                setLinearText(true);
            }
        };
        this.labelBackgroundPaint = new Paint(i2) { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.3
            {
                setColor(-872415232);
            }
        };
        this.visibilityLayoutInvalidate = new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.4
            @Override // java.lang.Runnable
            public void run() {
                MyVideoConsumerThumbnailView myVideoConsumerThumbnailView = MyVideoConsumerThumbnailView.this;
                myVideoConsumerThumbnailView.setVisibility(myVideoConsumerThumbnailView.participant != null ? 0 : 8);
                MyVideoConsumerThumbnailView.this.requestLayout();
                MyVideoConsumerThumbnailView.this.invalidate();
            }
        };
        init();
    }

    private boolean drawBitmap(Canvas canvas) {
        Participant participant = this.participant;
        Bitmap bitmap = this.bitmap;
        if (this.isStarted && participant != null && participant.isSendingVideo()) {
            return net.rtccloud.sdk.util.ViewUtils.safeDrawBitmap(canvas, bitmap, (Rect) null, this.bitmapRect, this.bitmapPaint);
        }
        return false;
    }

    private void drawNoVideo(Canvas canvas) {
        RectF rectF = this.emptyDrawableBounds;
        float f2 = this.labelRadius;
        canvas.drawRoundRect(rectF, f2, f2, this.emptyPaint);
        this.emptyDrawable.draw(canvas);
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        this.who = com.sightcall.universal.util.ViewUtils.whoami(this);
        this.emptyDrawable = ContextCompat.getDrawable(getContext(), R.drawable.universal_ic_videocam_off_36dp);
        this.labelTextPaint.setTextSize(getResources().getDimension(R.dimen.universal_thumbnail_label_text_size));
        this.labelExtraPadding = getResources().getDimension(R.dimen.universal_thumbnail_label_text_padding);
        this.labelRadius = getResources().getDimension(R.dimen.universal_thumbnail_label_radius);
        ViewUtils.applyThumbnailEffects(this, true);
    }

    private void postVisibilityLayoutInvalidate() {
        post(this.visibilityLayoutInvalidate);
    }

    private void updateScaling() {
        int width = getWidth();
        int height = getHeight();
        int intrinsicWidth = (int) (this.emptyDrawable.getIntrinsicWidth() / 2.0f);
        int intrinsicHeight = (int) (this.emptyDrawable.getIntrinsicHeight() / 2.0f);
        float f2 = width;
        int i2 = (int) (f2 / 2.0f);
        float f3 = height;
        int i3 = (int) (f3 / 2.0f);
        this.emptyDrawable.setBounds(i2 - intrinsicWidth, i3 - intrinsicHeight, i2 + intrinsicWidth, i3 + intrinsicHeight);
        this.emptyDrawableBounds.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, f3);
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            net.rtccloud.sdk.util.ViewUtils.applyScalingTo(ScaleType.FIT, this.bitmapRect, bitmap.getWidth(), bitmap.getHeight(), getWidth(), getHeight());
        } else {
            this.bitmapRect.setEmpty();
        }
        this.labelWrapper.refresh();
    }

    public boolean isFilterBitmap() {
        return this.bitmapPaint.isFilterBitmap();
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public boolean isStarted() {
        return this.isStarted;
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public void onBind(Call call, Participant participant) {
        log.d("onBind(%d) %s", Integer.valueOf(participant.id()), this.who);
        this.call = call;
        this.participant = participant;
        this.labelWrapper.onBind(participant);
        postVisibilityLayoutInvalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (!drawBitmap(canvas)) {
            drawNoVideo(canvas);
        }
        this.labelWrapper.draw(canvas);
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public void onFrame(Frame frame) {
        if (this.isStarted) {
            Bitmap bitmap = this.bitmap;
            Bitmap bitmap2 = frame.bitmap;
            int width = bitmap2.getWidth();
            int height = bitmap2.getHeight();
            this.bitmap = bitmap2;
            if (bitmap != null && bitmap.getWidth() == width && bitmap.getHeight() == height) {
                postInvalidate();
            } else {
                postVisibilityLayoutInvalidate();
            }
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        updateScaling();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int iRound;
        int size;
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            size = View.MeasureSpec.getSize(i3);
            iRound = View.MeasureSpec.getSize(i3);
        } else {
            int width = bitmap.getWidth();
            float height = bitmap.getHeight();
            float size2 = View.MeasureSpec.getSize(i3) / height;
            int iRound2 = Math.round(width * size2);
            iRound = Math.round(height * size2);
            size = iRound2;
        }
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onMeasure -> %dx%d", Integer.valueOf(size), Integer.valueOf(iRound));
        }
        setMeasuredDimension(size, iRound);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        log.d("onSizeChanged(%d, %d, %d, %d)", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
        updateScaling();
        invalidate();
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public void onStart() {
        log.d("onStart() %s", this.who);
        this.isStarted = true;
        postVisibilityLayoutInvalidate();
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public void onStop() {
        log.d("onStop() %s", this.who);
        this.isStarted = false;
        this.bitmap = null;
        this.bitmapRect.setEmpty();
        postVisibilityLayoutInvalidate();
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public void onUnbind() {
        log.d("onUnbind() %s", this.who);
        this.call = null;
        this.participant = null;
        this.bitmap = null;
        this.bitmapRect.setEmpty();
        this.labelWrapper.onUnbind();
        postVisibilityLayoutInvalidate();
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public Participant participant() {
        return this.participant;
    }

    public void setFilterBitmap(boolean z) {
        log.d("setFilterBitmap(%b) %s", Boolean.valueOf(z), this.who);
        this.bitmapPaint.setFilterBitmap(z);
        invalidate();
    }

    public final class LabelWrapper {
        private CharSequence label;
        private Participant participant;
        private final RectF rect;

        private LabelWrapper() {
            this.rect = new RectF();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void draw(Canvas canvas) {
            if (isReady()) {
                canvas.drawRoundRect(this.rect, MyVideoConsumerThumbnailView.this.labelRadius, MyVideoConsumerThumbnailView.this.labelRadius, MyVideoConsumerThumbnailView.this.labelBackgroundPaint);
                CharSequence charSequence = this.label;
                canvas.drawText(charSequence, 0, charSequence.length(), MyVideoConsumerThumbnailView.this.getWidth() / 2.0f, (MyVideoConsumerThumbnailView.this.getHeight() - MyVideoConsumerThumbnailView.this.labelTextPaint.descent()) - (MyVideoConsumerThumbnailView.this.labelExtraPadding / 2.0f), MyVideoConsumerThumbnailView.this.labelTextPaint);
            }
        }

        private boolean isReady() {
            return (this.participant == null || this.label == null) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void refresh() {
            Participant participant = this.participant;
            if (participant == null) {
                this.label = null;
                return;
            }
            String strDisplayName = participant.displayName();
            if (TextUtils.isEmpty(strDisplayName)) {
                this.label = null;
                return;
            }
            this.label = TextUtils.ellipsize(strDisplayName, MyVideoConsumerThumbnailView.this.labelTextPaint, MyVideoConsumerThumbnailView.this.getWidth() - (MyVideoConsumerThumbnailView.this.labelExtraPadding * 2.0f), TextUtils.TruncateAt.END);
            TextPaint textPaint = MyVideoConsumerThumbnailView.this.labelTextPaint;
            CharSequence charSequence = this.label;
            this.rect.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (MyVideoConsumerThumbnailView.this.labelExtraPadding * 2.0f) + textPaint.measureText(charSequence, 0, charSequence.length()), MyVideoConsumerThumbnailView.this.labelExtraPadding + (MyVideoConsumerThumbnailView.this.labelTextPaint.descent() - MyVideoConsumerThumbnailView.this.labelTextPaint.ascent()));
            this.rect.offset((MyVideoConsumerThumbnailView.this.getWidth() - this.rect.width()) / 2.0f, MyVideoConsumerThumbnailView.this.getHeight() - this.rect.height());
        }

        public void onBind(Participant participant) {
            this.participant = participant;
            refresh();
        }

        public void onUnbind() {
            this.participant = null;
            this.label = null;
        }

        public /* synthetic */ LabelWrapper(MyVideoConsumerThumbnailView myVideoConsumerThumbnailView, int i2) {
            this();
        }
    }

    public MyVideoConsumerThumbnailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.labelWrapper = new LabelWrapper(this, 0);
        this.bitmapRect = new RectF();
        this.bitmapPaint = new Paint();
        int i2 = 1;
        this.emptyPaint = new Paint(i2) { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.1
            {
                setColor(1140850688);
            }
        };
        this.emptyDrawableBounds = new RectF();
        this.labelTextPaint = new TextPaint(i2) { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.2
            {
                setColor(-1);
                setTextAlign(Paint.Align.CENTER);
                setLinearText(true);
            }
        };
        this.labelBackgroundPaint = new Paint(i2) { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.3
            {
                setColor(-872415232);
            }
        };
        this.visibilityLayoutInvalidate = new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.4
            @Override // java.lang.Runnable
            public void run() {
                MyVideoConsumerThumbnailView myVideoConsumerThumbnailView = MyVideoConsumerThumbnailView.this;
                myVideoConsumerThumbnailView.setVisibility(myVideoConsumerThumbnailView.participant != null ? 0 : 8);
                MyVideoConsumerThumbnailView.this.requestLayout();
                MyVideoConsumerThumbnailView.this.invalidate();
            }
        };
        init();
    }

    public MyVideoConsumerThumbnailView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.labelWrapper = new LabelWrapper(this, 0);
        this.bitmapRect = new RectF();
        this.bitmapPaint = new Paint();
        int i3 = 1;
        this.emptyPaint = new Paint(i3) { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.1
            {
                setColor(1140850688);
            }
        };
        this.emptyDrawableBounds = new RectF();
        this.labelTextPaint = new TextPaint(i3) { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.2
            {
                setColor(-1);
                setTextAlign(Paint.Align.CENTER);
                setLinearText(true);
            }
        };
        this.labelBackgroundPaint = new Paint(i3) { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.3
            {
                setColor(-872415232);
            }
        };
        this.visibilityLayoutInvalidate = new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoConsumerThumbnailView.4
            @Override // java.lang.Runnable
            public void run() {
                MyVideoConsumerThumbnailView myVideoConsumerThumbnailView = MyVideoConsumerThumbnailView.this;
                myVideoConsumerThumbnailView.setVisibility(myVideoConsumerThumbnailView.participant != null ? 0 : 8);
                MyVideoConsumerThumbnailView.this.requestLayout();
                MyVideoConsumerThumbnailView.this.invalidate();
            }
        };
        init();
    }
}
