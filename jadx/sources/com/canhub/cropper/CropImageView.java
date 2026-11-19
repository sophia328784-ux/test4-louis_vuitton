package com.canhub.cropper;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.canhub.cropper.CropOverlayView.ScaleListener;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobSupport;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0018\u009e\u0001\u009f\u0001 \u0001¡\u0001¢\u0001£\u0001¤\u0001¥\u0001¦\u0001§\u0001¨\u0001©\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\rJ\u0015\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010!¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010$¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010'¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\u000b2\b\u0010+\u001a\u0004\u0018\u00010*¢\u0006\u0004\b,\u0010-J\u0017\u00100\u001a\u00020\u000b2\b\u0010/\u001a\u0004\u0018\u00010.¢\u0006\u0004\b0\u00101R(\u00104\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b2\u00103\u0012\u0004\b7\u00108\u001a\u0004\b4\u00105\"\u0004\b6\u0010\rR(\u0010>\u001a\u0004\u0018\u00010.2\b\u00109\u001a\u0004\u0018\u00010.8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R$\u0010B\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010;\u001a\u0004\b@\u0010=\"\u0004\bA\u00101R$\u0010D\u001a\u00020C2\u0006\u0010D\u001a\u00020C8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR(\u0010J\u001a\u0004\u0018\u00010I2\b\u0010J\u001a\u0004\u0018\u00010I8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR(\u0010P\u001a\u0004\u0018\u00010O2\b\u0010P\u001a\u0004\u0018\u00010O8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR$\u0010V\u001a\u00020\t2\u0006\u0010U\u001a\u00020\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bV\u00105\"\u0004\bW\u0010\rR$\u0010Y\u001a\u00020X2\u0006\u0010Y\u001a\u00020X8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R$\u0010a\u001a\u00020X2\u0006\u0010^\u001a\u00020X8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b_\u0010[\"\u0004\b`\u0010]R$\u0010c\u001a\u00020\t2\u0006\u0010b\u001a\u00020\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bc\u00105\"\u0004\bd\u0010\rR$\u0010f\u001a\u00020\t2\u0006\u0010e\u001a\u00020\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bf\u00105\"\u0004\bg\u0010\rR(\u0010i\u001a\u0004\u0018\u00010h2\b\u0010i\u001a\u0004\u0018\u00010h8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u001d\u0010q\u001a\u000e\u0012\u0004\u0012\u00020X\u0012\u0004\u0012\u00020X0n8F¢\u0006\u0006\u001a\u0004\bo\u0010pR$\u0010s\u001a\u00020\t2\u0006\u0010r\u001a\u00020\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bs\u00105\"\u0004\bt\u0010\rR$\u0010v\u001a\u00020\t2\u0006\u0010u\u001a\u00020\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bv\u00105\"\u0004\bw\u0010\rR$\u0010y\u001a\u00020\t2\u0006\u0010x\u001a\u00020\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\by\u00105\"\u0004\bz\u0010\rR%\u0010|\u001a\u00020{2\u0006\u0010|\u001a\u00020{8F@FX\u0086\u000e¢\u0006\r\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R)\u0010\u0085\u0001\u001a\u00020\u00162\u0007\u0010\u0081\u0001\u001a\u00020\u00168F@FX\u0086\u000e¢\u0006\u000f\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0005\b\u0084\u0001\u0010\u0019R(\u0010\u0086\u0001\u001a\u00020X2\u0007\u0010\u0086\u0001\u001a\u00020X8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0087\u0001\u0010[\"\u0005\b\u0088\u0001\u0010]R(\u0010\u008c\u0001\u001a\u00020X2\u0007\u0010\u0089\u0001\u001a\u00020X8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u008a\u0001\u0010[\"\u0005\b\u008b\u0001\u0010]R\u0017\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008d\u00018F¢\u0006\b\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R0\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u008d\u00012\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008d\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0092\u0001\u0010\u008f\u0001\"\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0017\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018F¢\u0006\b\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0015\u0010\u009d\u0001\u001a\u00030\u009a\u00018F¢\u0006\b\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001¨\u0006ª\u0001"}, d2 = {"Lcom/canhub/cropper/CropImageView;", "Landroid/widget/FrameLayout;", "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "multiTouchEnabled", "", "setMultiTouchEnabled", "(Z)V", "centerMoveEnabled", "setCenterMoveEnabled", "fixAspectRatio", "setFixedAspectRatio", "Lcom/canhub/cropper/CropImageOptions;", "options", "setImageCropOptions", "(Lcom/canhub/cropper/CropImageOptions;)V", "", "snapRadius", "setSnapRadius", "(F)V", "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;", "listener", "setOnSetCropOverlayReleasedListener", "(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;)V", "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;", "setOnSetCropOverlayMovedListener", "(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;)V", "Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;", "setOnCropWindowChangedListener", "(Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;)V", "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;", "setOnSetImageUriCompleteListener", "(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V", "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;", "setOnCropImageCompleteListener", "(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V", "Landroid/graphics/Bitmap;", "bitmap", "setImageBitmap", "(Landroid/graphics/Bitmap;)V", "Landroid/net/Uri;", "uri", "setImageUriAsync", "(Landroid/net/Uri;)V", NBSSpanMetricUnit.Second, "Z", "isSaveBitmapToInstanceState", "()Z", "setSaveBitmapToInstanceState", "isSaveBitmapToInstanceState$annotations", "()V", "value", "G", "Landroid/net/Uri;", "getImageUri", "()Landroid/net/Uri;", "imageUri", "Q", "getCustomOutputUri", "setCustomOutputUri", "customOutputUri", "Lcom/canhub/cropper/CropImageView$ScaleType;", "scaleType", "getScaleType", "()Lcom/canhub/cropper/CropImageView$ScaleType;", "setScaleType", "(Lcom/canhub/cropper/CropImageView$ScaleType;)V", "Lcom/canhub/cropper/CropImageView$CropShape;", "cropShape", "getCropShape", "()Lcom/canhub/cropper/CropImageView$CropShape;", "setCropShape", "(Lcom/canhub/cropper/CropImageView$CropShape;)V", "Lcom/canhub/cropper/CropImageView$CropCornerShape;", "cornerShape", "getCornerShape", "()Lcom/canhub/cropper/CropImageView$CropCornerShape;", "setCornerShape", "(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V", "autoZoomEnabled", "isAutoZoomEnabled", "setAutoZoomEnabled", "", "maxZoom", "getMaxZoom", "()I", "setMaxZoom", "(I)V", "degrees", "getRotatedDegrees", "setRotatedDegrees", "rotatedDegrees", "flipHorizontally", "isFlippedHorizontally", "setFlippedHorizontally", "flipVertically", "isFlippedVertically", "setFlippedVertically", "Lcom/canhub/cropper/CropImageView$Guidelines;", "guidelines", "getGuidelines", "()Lcom/canhub/cropper/CropImageView$Guidelines;", "setGuidelines", "(Lcom/canhub/cropper/CropImageView$Guidelines;)V", "Landroid/util/Pair;", "getAspectRatio", "()Landroid/util/Pair;", "aspectRatio", "showProgressBar", "isShowProgressBar", "setShowProgressBar", "showCropOverlay", "isShowCropOverlay", "setShowCropOverlay", "showCropLabel", "isShowCropLabel", "setShowCropLabel", "", "cropLabelText", "getCropLabelText", "()Ljava/lang/String;", "setCropLabelText", "(Ljava/lang/String;)V", "textSize", "getCropLabelTextSize", "()F", "setCropLabelTextSize", "cropLabelTextSize", "cropLabelTextColor", "getCropLabelTextColor", "setCropLabelTextColor", "resId", "getImageResource", "setImageResource", "imageResource", "Landroid/graphics/Rect;", "getWholeImageRect", "()Landroid/graphics/Rect;", "wholeImageRect", "rect", "getCropRect", "setCropRect", "(Landroid/graphics/Rect;)V", "cropRect", "Landroid/graphics/RectF;", "getCropWindowRect", "()Landroid/graphics/RectF;", "cropWindowRect", "", "getCropPoints", "()[F", "cropPoints", "CropShape", "CropCornerShape", "ScaleType", "Guidelines", "RequestSizeOptions", "OnSetCropOverlayReleasedListener", "OnSetCropOverlayMovedListener", "OnSetCropWindowChangeListener", "OnSetImageUriCompleteListener", "OnCropImageCompleteListener", "CropResult", "Companion", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CropImageView extends FrameLayout implements CropOverlayView.CropWindowChangeListener {
    public static final Companion R = new Companion(null);
    public int A;
    public OnSetCropOverlayReleasedListener B;
    public OnSetCropOverlayMovedListener C;
    public OnSetCropWindowChangeListener D;
    public OnSetImageUriCompleteListener E;
    public OnCropImageCompleteListener F;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    public Uri imageUri;
    public int H;
    public float I;
    public float J;
    public float K;
    public RectF L;
    public int M;
    public boolean N;
    public WeakReference O;
    public WeakReference P;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    public Uri customOutputUri;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f25072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CropOverlayView f25073c;
    public final Matrix d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Matrix f25074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f25075f;
    public final float[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f25076h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CropImageAnimation f25077i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Bitmap f25078j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f25079k;
    public int l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public ScaleType r;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    public boolean isSaveBitmapToInstanceState;
    public boolean t;
    public boolean u;
    public String v;
    public float w;
    public int x;
    public boolean y;
    public boolean z;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropImageView$Companion;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/canhub/cropper/CropImageView$CropCornerShape;", "", "RECTANGLE", "OVAL", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class CropCornerShape {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CropCornerShape[] $VALUES;
        public static final CropCornerShape OVAL;
        public static final CropCornerShape RECTANGLE;

        static {
            CropCornerShape cropCornerShape = new CropCornerShape("RECTANGLE", 0);
            RECTANGLE = cropCornerShape;
            CropCornerShape cropCornerShape2 = new CropCornerShape("OVAL", 1);
            OVAL = cropCornerShape2;
            CropCornerShape[] cropCornerShapeArr = {cropCornerShape, cropCornerShape2};
            $VALUES = cropCornerShapeArr;
            $ENTRIES = EnumEntriesKt.a(cropCornerShapeArr);
        }

        public static EnumEntries a() {
            return $ENTRIES;
        }

        public static CropCornerShape valueOf(String str) {
            return (CropCornerShape) Enum.valueOf(CropCornerShape.class, str);
        }

        public static CropCornerShape[] values() {
            return (CropCornerShape[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001Bm\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\n\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/canhub/cropper/CropImageView$CropResult;", "", "Landroid/graphics/Bitmap;", "originalBitmap", "Landroid/net/Uri;", "originalUri", "bitmap", "uriContent", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "", "cropPoints", "Landroid/graphics/Rect;", "cropRect", "wholeImageRect", "", "rotation", "sampleSize", "<init>", "(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static class CropResult {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f25080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Uri f25081c;
        public final Exception d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float[] f25082e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Rect f25083f;
        public final Rect g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f25084h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f25085i;

        public CropResult(Bitmap bitmap, Uri uri, Bitmap bitmap2, Uri uri2, Exception exc, float[] fArr, Rect rect, Rect rect2, int i2, int i3) {
            fArr.getClass();
            this.f25080b = uri;
            this.f25081c = uri2;
            this.d = exc;
            this.f25082e = fArr;
            this.f25083f = rect;
            this.g = rect2;
            this.f25084h = i2;
            this.f25085i = i3;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/canhub/cropper/CropImageView$CropShape;", "", "RECTANGLE", "OVAL", "RECTANGLE_VERTICAL_ONLY", "RECTANGLE_HORIZONTAL_ONLY", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class CropShape {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CropShape[] $VALUES;
        public static final CropShape OVAL;
        public static final CropShape RECTANGLE;
        public static final CropShape RECTANGLE_HORIZONTAL_ONLY;
        public static final CropShape RECTANGLE_VERTICAL_ONLY;

        static {
            CropShape cropShape = new CropShape("RECTANGLE", 0);
            RECTANGLE = cropShape;
            CropShape cropShape2 = new CropShape("OVAL", 1);
            OVAL = cropShape2;
            CropShape cropShape3 = new CropShape("RECTANGLE_VERTICAL_ONLY", 2);
            RECTANGLE_VERTICAL_ONLY = cropShape3;
            CropShape cropShape4 = new CropShape("RECTANGLE_HORIZONTAL_ONLY", 3);
            RECTANGLE_HORIZONTAL_ONLY = cropShape4;
            CropShape[] cropShapeArr = {cropShape, cropShape2, cropShape3, cropShape4};
            $VALUES = cropShapeArr;
            $ENTRIES = EnumEntriesKt.a(cropShapeArr);
        }

        public static EnumEntries a() {
            return $ENTRIES;
        }

        public static CropShape valueOf(String str) {
            return (CropShape) Enum.valueOf(CropShape.class, str);
        }

        public static CropShape[] values() {
            return (CropShape[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/canhub/cropper/CropImageView$Guidelines;", "", "OFF", "ON_TOUCH", "ON", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Guidelines {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Guidelines[] $VALUES;
        public static final Guidelines OFF;
        public static final Guidelines ON;
        public static final Guidelines ON_TOUCH;

        static {
            Guidelines guidelines = new Guidelines("OFF", 0);
            OFF = guidelines;
            Guidelines guidelines2 = new Guidelines("ON_TOUCH", 1);
            ON_TOUCH = guidelines2;
            Guidelines guidelines3 = new Guidelines("ON", 2);
            ON = guidelines3;
            Guidelines[] guidelinesArr = {guidelines, guidelines2, guidelines3};
            $VALUES = guidelinesArr;
            $ENTRIES = EnumEntriesKt.a(guidelinesArr);
        }

        public static EnumEntries a() {
            return $ENTRIES;
        }

        public static Guidelines valueOf(String str) {
            return (Guidelines) Enum.valueOf(Guidelines.class, str);
        }

        public static Guidelines[] values() {
            return (Guidelines[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface OnCropImageCompleteListener {
        void g(CropImageView cropImageView, CropResult cropResult);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface OnSetCropOverlayMovedListener {
        void a();
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface OnSetCropOverlayReleasedListener {
        void a();
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface OnSetCropWindowChangeListener {
        void a();
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface OnSetImageUriCompleteListener {
        void m(CropImageView cropImageView, Uri uri, Exception exc);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/canhub/cropper/CropImageView$RequestSizeOptions;", "", "NONE", "SAMPLING", "RESIZE_INSIDE", "RESIZE_FIT", "RESIZE_EXACT", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RequestSizeOptions {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RequestSizeOptions[] $VALUES;
        public static final RequestSizeOptions NONE;
        public static final RequestSizeOptions RESIZE_EXACT;
        public static final RequestSizeOptions RESIZE_FIT;
        public static final RequestSizeOptions RESIZE_INSIDE;
        public static final RequestSizeOptions SAMPLING;

        static {
            RequestSizeOptions requestSizeOptions = new RequestSizeOptions("NONE", 0);
            NONE = requestSizeOptions;
            RequestSizeOptions requestSizeOptions2 = new RequestSizeOptions("SAMPLING", 1);
            SAMPLING = requestSizeOptions2;
            RequestSizeOptions requestSizeOptions3 = new RequestSizeOptions("RESIZE_INSIDE", 2);
            RESIZE_INSIDE = requestSizeOptions3;
            RequestSizeOptions requestSizeOptions4 = new RequestSizeOptions("RESIZE_FIT", 3);
            RESIZE_FIT = requestSizeOptions4;
            RequestSizeOptions requestSizeOptions5 = new RequestSizeOptions("RESIZE_EXACT", 4);
            RESIZE_EXACT = requestSizeOptions5;
            RequestSizeOptions[] requestSizeOptionsArr = {requestSizeOptions, requestSizeOptions2, requestSizeOptions3, requestSizeOptions4, requestSizeOptions5};
            $VALUES = requestSizeOptionsArr;
            $ENTRIES = EnumEntriesKt.a(requestSizeOptionsArr);
        }

        public static RequestSizeOptions valueOf(String str) {
            return (RequestSizeOptions) Enum.valueOf(RequestSizeOptions.class, str);
        }

        public static RequestSizeOptions[] values() {
            return (RequestSizeOptions[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/canhub/cropper/CropImageView$ScaleType;", "", "FIT_CENTER", "CENTER", "CENTER_CROP", "CENTER_INSIDE", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ScaleType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ScaleType[] $VALUES;
        public static final ScaleType CENTER;
        public static final ScaleType CENTER_CROP;
        public static final ScaleType CENTER_INSIDE;
        public static final ScaleType FIT_CENTER;

        static {
            ScaleType scaleType = new ScaleType("FIT_CENTER", 0);
            FIT_CENTER = scaleType;
            ScaleType scaleType2 = new ScaleType("CENTER", 1);
            CENTER = scaleType2;
            ScaleType scaleType3 = new ScaleType("CENTER_CROP", 2);
            CENTER_CROP = scaleType3;
            ScaleType scaleType4 = new ScaleType("CENTER_INSIDE", 3);
            CENTER_INSIDE = scaleType4;
            ScaleType[] scaleTypeArr = {scaleType, scaleType2, scaleType3, scaleType4};
            $VALUES = scaleTypeArr;
            $ENTRIES = EnumEntriesKt.a(scaleTypeArr);
        }

        public static EnumEntries a() {
            return $ENTRIES;
        }

        public static ScaleType valueOf(String str) {
            return (ScaleType) Enum.valueOf(ScaleType.class, str);
        }

        public static ScaleType[] values() {
            return (ScaleType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:17:0x0066 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0068  */
    /* JADX WARN: Code duplicated, block: B:30:0x0298  */
    /* JADX WARN: Code duplicated, block: B:35:0x02fc  */
    /* JADX WARN: Multi-variable type inference failed */
    public CropImageView(Context context, AttributeSet attributeSet) {
        CropImageOptions cropImageOptions;
        TypedArray typedArrayObtainStyledAttributes;
        CropImageOptions cropImageOptions2;
        boolean z;
        Intent intent;
        Bundle bundleExtra;
        super(context, attributeSet);
        context.getClass();
        this.d = new Matrix();
        this.f25074e = new Matrix();
        this.g = new float[8];
        this.f25076h = new float[8];
        this.t = true;
        this.v = "";
        this.w = 20.0f;
        this.x = -1;
        this.y = true;
        this.z = true;
        this.H = 1;
        this.I = 1.0f;
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null && (intent = activity.getIntent()) != null && (bundleExtra = intent.getBundleExtra("CROP_IMAGE_EXTRA_BUNDLE")) != null) {
            Parcelable parcelable = bundleExtra.getParcelable("CROP_IMAGE_EXTRA_OPTIONS");
            cropImageOptions = (CropImageOptions) (parcelable instanceof CropImageOptions ? parcelable : null);
            if (cropImageOptions == null) {
                if (attributeSet != null) {
                    typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f25113a, 0, 0);
                    typedArrayObtainStyledAttributes.getClass();
                    cropImageOptions2 = new CropImageOptions(false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1, -1, 63, null);
                    this.isSaveBitmapToInstanceState = typedArrayObtainStyledAttributes.getBoolean(29, this.isSaveBitmapToInstanceState);
                    ScaleType scaleType = (ScaleType) ScaleType.a().get(typedArrayObtainStyledAttributes.getInt(30, cropImageOptions2.f25070j.ordinal()));
                    CropShape cropShape = (CropShape) CropShape.a().get(typedArrayObtainStyledAttributes.getInt(31, cropImageOptions2.d.ordinal()));
                    CropCornerShape cropCornerShape = (CropCornerShape) CropCornerShape.a().get(typedArrayObtainStyledAttributes.getInt(0, cropImageOptions2.f25066e.ordinal()));
                    Guidelines guidelines = (Guidelines) Guidelines.a().get(typedArrayObtainStyledAttributes.getInt(17, cropImageOptions2.f25069i.ordinal()));
                    int integer = typedArrayObtainStyledAttributes.getInteger(1, cropImageOptions2.v);
                    int integer2 = typedArrayObtainStyledAttributes.getInteger(2, cropImageOptions2.w);
                    boolean z2 = typedArrayObtainStyledAttributes.getBoolean(3, cropImageOptions2.o);
                    boolean z3 = typedArrayObtainStyledAttributes.getBoolean(28, cropImageOptions2.p);
                    boolean z4 = typedArrayObtainStyledAttributes.getBoolean(11, cropImageOptions2.q);
                    float dimension = typedArrayObtainStyledAttributes.getDimension(13, cropImageOptions2.f25067f);
                    float dimension2 = typedArrayObtainStyledAttributes.getDimension(35, cropImageOptions2.g);
                    float dimension3 = typedArrayObtainStyledAttributes.getDimension(36, cropImageOptions2.f25068h);
                    float f2 = typedArrayObtainStyledAttributes.getFloat(20, cropImageOptions2.t);
                    int integer3 = typedArrayObtainStyledAttributes.getInteger(12, cropImageOptions2.D);
                    float dimension4 = typedArrayObtainStyledAttributes.getDimension(10, cropImageOptions2.x);
                    int integer4 = typedArrayObtainStyledAttributes.getInteger(9, cropImageOptions2.y);
                    float dimension5 = typedArrayObtainStyledAttributes.getDimension(8, cropImageOptions2.z);
                    float dimension6 = typedArrayObtainStyledAttributes.getDimension(7, cropImageOptions2.A);
                    float dimension7 = typedArrayObtainStyledAttributes.getDimension(6, cropImageOptions2.B);
                    int integer5 = typedArrayObtainStyledAttributes.getInteger(5, cropImageOptions2.C);
                    float dimension8 = typedArrayObtainStyledAttributes.getDimension(19, cropImageOptions2.E);
                    int integer6 = typedArrayObtainStyledAttributes.getInteger(18, cropImageOptions2.F);
                    int integer7 = typedArrayObtainStyledAttributes.getInteger(4, cropImageOptions2.G);
                    int dimension9 = (int) typedArrayObtainStyledAttributes.getDimension(27, cropImageOptions2.H);
                    int dimension10 = (int) typedArrayObtainStyledAttributes.getDimension(26, cropImageOptions2.I);
                    int i2 = (int) typedArrayObtainStyledAttributes.getFloat(25, cropImageOptions2.J);
                    int i3 = (int) typedArrayObtainStyledAttributes.getFloat(24, cropImageOptions2.K);
                    int i4 = (int) typedArrayObtainStyledAttributes.getFloat(22, cropImageOptions2.L);
                    int i5 = (int) typedArrayObtainStyledAttributes.getFloat(21, cropImageOptions2.M);
                    boolean z5 = typedArrayObtainStyledAttributes.getBoolean(15, cropImageOptions2.d1);
                    boolean z6 = typedArrayObtainStyledAttributes.getBoolean(15, cropImageOptions2.e1);
                    float dimension11 = typedArrayObtainStyledAttributes.getDimension(39, cropImageOptions2.l1);
                    int integer8 = typedArrayObtainStyledAttributes.getInteger(38, cropImageOptions2.m1);
                    boolean z7 = typedArrayObtainStyledAttributes.getBoolean(33, cropImageOptions2.l);
                    int integer9 = typedArrayObtainStyledAttributes.getInteger(23, cropImageOptions2.s);
                    boolean z8 = typedArrayObtainStyledAttributes.getBoolean(32, cropImageOptions2.f25071k);
                    boolean z9 = typedArrayObtainStyledAttributes.getBoolean(34, cropImageOptions2.m);
                    String string = typedArrayObtainStyledAttributes.getString(37);
                    if (typedArrayObtainStyledAttributes.getBoolean(14, cropImageOptions2.u)) {
                        z = true;
                    } else {
                        z = true;
                    }
                    CropImageOptions cropImageOptions3 = new CropImageOptions(false, false, cropShape, cropCornerShape, dimension, dimension2, dimension3, guidelines, scaleType, z8, z7, z9, 0, z2, z3, z4, false, integer9, f2, z, integer, integer2, dimension4, integer4, dimension5, dimension6, dimension7, integer5, integer3, dimension8, integer6, integer7, dimension9, dimension10, i2, i3, i4, i5, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, z5, z6, null, 0, false, false, null, null, dimension11, integer8, string, 0, null, null, null, null, 69635, 1061158848, 62, null);
                    typedArrayObtainStyledAttributes.recycle();
                    cropImageOptions = cropImageOptions3;
                } else {
                    cropImageOptions = new CropImageOptions(false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1, -1, 63, null);
                }
            }
        } else if (attributeSet != null) {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f25113a, 0, 0);
            typedArrayObtainStyledAttributes.getClass();
            cropImageOptions2 = new CropImageOptions(false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1, -1, 63, null);
            try {
                this.isSaveBitmapToInstanceState = typedArrayObtainStyledAttributes.getBoolean(29, this.isSaveBitmapToInstanceState);
                ScaleType scaleType2 = (ScaleType) ScaleType.a().get(typedArrayObtainStyledAttributes.getInt(30, cropImageOptions2.f25070j.ordinal()));
                CropShape cropShape2 = (CropShape) CropShape.a().get(typedArrayObtainStyledAttributes.getInt(31, cropImageOptions2.d.ordinal()));
                CropCornerShape cropCornerShape2 = (CropCornerShape) CropCornerShape.a().get(typedArrayObtainStyledAttributes.getInt(0, cropImageOptions2.f25066e.ordinal()));
                Guidelines guidelines2 = (Guidelines) Guidelines.a().get(typedArrayObtainStyledAttributes.getInt(17, cropImageOptions2.f25069i.ordinal()));
                int integer10 = typedArrayObtainStyledAttributes.getInteger(1, cropImageOptions2.v);
                int integer11 = typedArrayObtainStyledAttributes.getInteger(2, cropImageOptions2.w);
                boolean z10 = typedArrayObtainStyledAttributes.getBoolean(3, cropImageOptions2.o);
                boolean z11 = typedArrayObtainStyledAttributes.getBoolean(28, cropImageOptions2.p);
                boolean z12 = typedArrayObtainStyledAttributes.getBoolean(11, cropImageOptions2.q);
                float dimension12 = typedArrayObtainStyledAttributes.getDimension(13, cropImageOptions2.f25067f);
                float dimension13 = typedArrayObtainStyledAttributes.getDimension(35, cropImageOptions2.g);
                float dimension14 = typedArrayObtainStyledAttributes.getDimension(36, cropImageOptions2.f25068h);
                float f3 = typedArrayObtainStyledAttributes.getFloat(20, cropImageOptions2.t);
                int integer12 = typedArrayObtainStyledAttributes.getInteger(12, cropImageOptions2.D);
                float dimension15 = typedArrayObtainStyledAttributes.getDimension(10, cropImageOptions2.x);
                int integer13 = typedArrayObtainStyledAttributes.getInteger(9, cropImageOptions2.y);
                float dimension16 = typedArrayObtainStyledAttributes.getDimension(8, cropImageOptions2.z);
                float dimension17 = typedArrayObtainStyledAttributes.getDimension(7, cropImageOptions2.A);
                float dimension18 = typedArrayObtainStyledAttributes.getDimension(6, cropImageOptions2.B);
                int integer14 = typedArrayObtainStyledAttributes.getInteger(5, cropImageOptions2.C);
                float dimension19 = typedArrayObtainStyledAttributes.getDimension(19, cropImageOptions2.E);
                int integer15 = typedArrayObtainStyledAttributes.getInteger(18, cropImageOptions2.F);
                int integer16 = typedArrayObtainStyledAttributes.getInteger(4, cropImageOptions2.G);
                int dimension20 = (int) typedArrayObtainStyledAttributes.getDimension(27, cropImageOptions2.H);
                int dimension110 = (int) typedArrayObtainStyledAttributes.getDimension(26, cropImageOptions2.I);
                int i6 = (int) typedArrayObtainStyledAttributes.getFloat(25, cropImageOptions2.J);
                int i7 = (int) typedArrayObtainStyledAttributes.getFloat(24, cropImageOptions2.K);
                int i8 = (int) typedArrayObtainStyledAttributes.getFloat(22, cropImageOptions2.L);
                int i9 = (int) typedArrayObtainStyledAttributes.getFloat(21, cropImageOptions2.M);
                boolean z13 = typedArrayObtainStyledAttributes.getBoolean(15, cropImageOptions2.d1);
                boolean z14 = typedArrayObtainStyledAttributes.getBoolean(15, cropImageOptions2.e1);
                float dimension111 = typedArrayObtainStyledAttributes.getDimension(39, cropImageOptions2.l1);
                int integer17 = typedArrayObtainStyledAttributes.getInteger(38, cropImageOptions2.m1);
                boolean z15 = typedArrayObtainStyledAttributes.getBoolean(33, cropImageOptions2.l);
                int integer18 = typedArrayObtainStyledAttributes.getInteger(23, cropImageOptions2.s);
                boolean z16 = typedArrayObtainStyledAttributes.getBoolean(32, cropImageOptions2.f25071k);
                boolean z17 = typedArrayObtainStyledAttributes.getBoolean(34, cropImageOptions2.m);
                String string2 = typedArrayObtainStyledAttributes.getString(37);
                if (typedArrayObtainStyledAttributes.getBoolean(14, cropImageOptions2.u) || (typedArrayObtainStyledAttributes.hasValue(1) && typedArrayObtainStyledAttributes.hasValue(1))) {
                    z = true;
                } else {
                    z = false;
                }
                CropImageOptions cropImageOptions4 = new CropImageOptions(false, false, cropShape2, cropCornerShape2, dimension12, dimension13, dimension14, guidelines2, scaleType2, z16, z15, z17, 0, z10, z11, z12, false, integer18, f3, z, integer10, integer11, dimension15, integer13, dimension16, dimension17, dimension18, integer14, integer12, dimension19, integer15, integer16, dimension20, dimension110, i6, i7, i8, i9, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, z13, z14, null, 0, false, false, null, null, dimension111, integer17, string2, 0, null, null, null, null, 69635, 1061158848, 62, null);
                typedArrayObtainStyledAttributes.recycle();
                cropImageOptions = cropImageOptions4;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            cropImageOptions = new CropImageOptions(false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1, -1, 63, null);
        }
        this.r = cropImageOptions.f25070j;
        this.z = cropImageOptions.o;
        this.A = cropImageOptions.s;
        this.w = cropImageOptions.l1;
        this.u = cropImageOptions.l;
        this.t = cropImageOptions.f25071k;
        this.y = cropImageOptions.m;
        this.m = cropImageOptions.d1;
        this.n = cropImageOptions.e1;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.crop_image_view, (ViewGroup) this, true);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.ImageView_image);
        this.f25072b = imageView;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        CropOverlayView cropOverlayView = (CropOverlayView) viewInflate.findViewById(R.id.CropOverlayView);
        this.f25073c = cropOverlayView;
        cropOverlayView.setCropWindowChangeListener(this);
        cropOverlayView.setInitialAttributeValues(cropImageOptions);
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.CropProgressBar);
        this.f25075f = progressBar;
        progressBar.setIndeterminateTintList(ColorStateList.valueOf(cropImageOptions.n));
        j();
    }

    @Override // com.canhub.cropper.CropOverlayView.CropWindowChangeListener
    public final void a(boolean z) {
        e(z, true);
        if (z) {
            OnSetCropOverlayMovedListener onSetCropOverlayMovedListener = this.C;
            if (onSetCropOverlayMovedListener != null) {
                getCropRect();
                onSetCropOverlayMovedListener.a();
                return;
            }
            return;
        }
        OnSetCropOverlayReleasedListener onSetCropOverlayReleasedListener = this.B;
        if (onSetCropOverlayReleasedListener != null) {
            getCropRect();
            onSetCropOverlayReleasedListener.a();
        }
    }

    public final void b(float f2, float f3, boolean z, boolean z2) {
        Bitmap bitmap = this.f25078j;
        if (bitmap != null) {
            float fMax = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            Matrix matrix = this.d;
            Matrix matrix2 = this.f25074e;
            matrix.invert(matrix2);
            CropOverlayView cropOverlayView = this.f25073c;
            cropOverlayView.getClass();
            RectF cropWindowRect = cropOverlayView.getCropWindowRect();
            matrix2.mapRect(cropWindowRect);
            matrix.reset();
            matrix.postTranslate((f2 - bitmap.getWidth()) / 2.0f, (f3 - bitmap.getHeight()) / 2.0f);
            f();
            int i2 = this.l;
            float[] fArr = this.g;
            if (i2 > 0) {
                Rect rect = BitmapUtils.f25037a;
                fArr.getClass();
                matrix.postRotate(i2, (BitmapUtils.n(fArr) + BitmapUtils.o(fArr)) / 2.0f, (BitmapUtils.p(fArr) + BitmapUtils.l(fArr)) / 2.0f);
                f();
            }
            Rect rect2 = BitmapUtils.f25037a;
            fArr.getClass();
            float fMin = Math.min(f2 / (BitmapUtils.o(fArr) - BitmapUtils.n(fArr)), f3 / (BitmapUtils.l(fArr) - BitmapUtils.p(fArr)));
            ScaleType scaleType = this.r;
            if (scaleType == ScaleType.FIT_CENTER || ((scaleType == ScaleType.CENTER_INSIDE && fMin < 1.0f) || (fMin > 1.0f && this.z))) {
                matrix.postScale(fMin, fMin, (BitmapUtils.n(fArr) + BitmapUtils.o(fArr)) / 2.0f, (BitmapUtils.p(fArr) + BitmapUtils.l(fArr)) / 2.0f);
                f();
            } else if (scaleType == ScaleType.CENTER_CROP) {
                this.I = Math.max(getWidth() / (BitmapUtils.o(fArr) - BitmapUtils.n(fArr)), getHeight() / (BitmapUtils.l(fArr) - BitmapUtils.p(fArr)));
            }
            boolean z3 = this.m;
            float f4 = this.I;
            float f5 = z3 ? -f4 : f4;
            if (this.n) {
                f4 = -f4;
            }
            matrix.postScale(f5, f4, (BitmapUtils.n(fArr) + BitmapUtils.o(fArr)) / 2.0f, (BitmapUtils.p(fArr) + BitmapUtils.l(fArr)) / 2.0f);
            f();
            matrix.mapRect(cropWindowRect);
            if (this.r == ScaleType.CENTER_CROP && z && !z2) {
                this.J = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                this.K = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            } else if (z) {
                this.J = f2 > BitmapUtils.o(fArr) - BitmapUtils.n(fArr) ? 0.0f : Math.max(Math.min((f2 / 2.0f) - cropWindowRect.centerX(), -BitmapUtils.n(fArr)), getWidth() - BitmapUtils.o(fArr)) / f5;
                if (f3 <= BitmapUtils.l(fArr) - BitmapUtils.p(fArr)) {
                    fMax = Math.max(Math.min((f3 / 2.0f) - cropWindowRect.centerY(), -BitmapUtils.p(fArr)), getHeight() - BitmapUtils.l(fArr)) / f4;
                }
                this.K = fMax;
            } else {
                this.J = Math.min(Math.max(this.J * f5, -cropWindowRect.left), (-cropWindowRect.right) + f2) / f5;
                this.K = Math.min(Math.max(this.K * f4, -cropWindowRect.top), (-cropWindowRect.bottom) + f3) / f4;
            }
            matrix.postTranslate(this.J * f5, this.K * f4);
            cropWindowRect.offset(this.J * f5, this.K * f4);
            cropOverlayView.setCropWindowRect(cropWindowRect);
            f();
            cropOverlayView.invalidate();
            ImageView imageView = this.f25072b;
            if (z2) {
                CropImageAnimation cropImageAnimation = this.f25077i;
                cropImageAnimation.getClass();
                System.arraycopy(fArr, 0, cropImageAnimation.f25055e, 0, 8);
                cropImageAnimation.g.set(cropImageAnimation.f25054c.getCropWindowRect());
                matrix.getValues(cropImageAnimation.f25058i);
                imageView.startAnimation(this.f25077i);
            } else {
                imageView.setImageMatrix(matrix);
            }
            k(false);
        }
    }

    public final void c() {
        Bitmap bitmap = this.f25078j;
        if (bitmap != null && (this.q > 0 || this.imageUri != null)) {
            bitmap.getClass();
            bitmap.recycle();
        }
        this.f25078j = null;
        this.q = 0;
        this.imageUri = null;
        this.H = 1;
        this.l = 0;
        this.I = 1.0f;
        this.J = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.K = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.d.reset();
        this.L = null;
        this.M = 0;
        this.f25072b.setImageBitmap(null);
        i();
    }

    public final Bitmap d(RequestSizeOptions requestSizeOptions) {
        BitmapUtils.BitmapSampled bitmapSampledE;
        requestSizeOptions.getClass();
        Bitmap bitmap = this.f25078j;
        if (bitmap == null) {
            return null;
        }
        RequestSizeOptions requestSizeOptions2 = RequestSizeOptions.NONE;
        Uri uri = this.imageUri;
        CropOverlayView cropOverlayView = this.f25073c;
        if (uri == null || (this.H <= 1 && requestSizeOptions != RequestSizeOptions.SAMPLING)) {
            Rect rect = BitmapUtils.f25037a;
            float[] cropPoints = getCropPoints();
            int i2 = this.l;
            cropOverlayView.getClass();
            bitmapSampledE = BitmapUtils.e(bitmap, cropPoints, i2, cropOverlayView.B, cropOverlayView.getC(), cropOverlayView.getD(), this.m, this.n);
        } else {
            Rect rect2 = BitmapUtils.f25037a;
            Context context = getContext();
            context.getClass();
            Uri uri2 = this.imageUri;
            float[] cropPoints2 = getCropPoints();
            int i3 = this.l;
            Bitmap bitmap2 = this.f25078j;
            bitmap2.getClass();
            int width = bitmap2.getWidth() * this.H;
            Bitmap bitmap3 = this.f25078j;
            bitmap3.getClass();
            int height = bitmap3.getHeight() * this.H;
            cropOverlayView.getClass();
            bitmapSampledE = BitmapUtils.c(context, uri2, cropPoints2, i3, width, height, cropOverlayView.B, cropOverlayView.getC(), cropOverlayView.getD(), 0, 0, this.m, this.n);
        }
        return BitmapUtils.r(bitmapSampledE.f25042a, 0, 0, requestSizeOptions);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x008b  */
    public final void e(boolean z, boolean z2) {
        float fMax;
        int width = getWidth();
        int height = getHeight();
        if (this.f25078j == null || width <= 0 || height <= 0) {
            return;
        }
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        RectF cropWindowRect = cropOverlayView.getCropWindowRect();
        if (!z) {
            if (this.z || this.I > 1.0f) {
                if (this.I < this.A) {
                    float f2 = width;
                    if (cropWindowRect.width() < f2 * 0.5f) {
                        float f3 = height;
                        if (cropWindowRect.height() < 0.5f * f3) {
                            fMax = Math.min(this.A, Math.min(f2 / ((cropWindowRect.width() / this.I) / 0.64f), f3 / ((cropWindowRect.height() / this.I) / 0.64f)));
                        } else {
                            fMax = 0.0f;
                        }
                    } else {
                        fMax = 0.0f;
                    }
                } else {
                    fMax = 0.0f;
                }
                if (this.I > 1.0f) {
                    float f4 = width;
                    if (cropWindowRect.width() > f4 * 0.65f || cropWindowRect.height() > height * 0.65f) {
                        fMax = Math.max(1.0f, Math.min(f4 / ((cropWindowRect.width() / this.I) / 0.51f), height / ((cropWindowRect.height() / this.I) / 0.51f)));
                    }
                }
                float f5 = this.z ? fMax : 1.0f;
                if (f5 > Call.Parameters.DEFAULT_CAMERA_ZOOM && f5 != this.I) {
                    if (z2) {
                        if (this.f25077i == null) {
                            this.f25077i = new CropImageAnimation(this.f25072b, cropOverlayView);
                        }
                        CropImageAnimation cropImageAnimation = this.f25077i;
                        cropImageAnimation.getClass();
                        float[] fArr = this.g;
                        fArr.getClass();
                        Matrix matrix = this.d;
                        matrix.getClass();
                        cropImageAnimation.reset();
                        System.arraycopy(fArr, 0, cropImageAnimation.d, 0, 8);
                        cropImageAnimation.f25056f.set(cropImageAnimation.f25054c.getCropWindowRect());
                        matrix.getValues(cropImageAnimation.f25057h);
                    }
                    this.I = f5;
                    b(width, height, true, z2);
                }
            }
        } else if (cropWindowRect.left < Call.Parameters.DEFAULT_CAMERA_ZOOM || cropWindowRect.top < Call.Parameters.DEFAULT_CAMERA_ZOOM || cropWindowRect.right > width || cropWindowRect.bottom > height) {
            b(width, height, false, false);
        }
        OnSetCropWindowChangeListener onSetCropWindowChangeListener = this.D;
        if (onSetCropWindowChangeListener == null || z) {
            return;
        }
        onSetCropWindowChangeListener.a();
    }

    public final void f() {
        float[] fArr = this.g;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        Bitmap bitmap = this.f25078j;
        bitmap.getClass();
        fArr[2] = bitmap.getWidth();
        fArr[3] = 0.0f;
        Bitmap bitmap2 = this.f25078j;
        bitmap2.getClass();
        fArr[4] = bitmap2.getWidth();
        Bitmap bitmap3 = this.f25078j;
        bitmap3.getClass();
        fArr[5] = bitmap3.getHeight();
        fArr[6] = 0.0f;
        Bitmap bitmap4 = this.f25078j;
        bitmap4.getClass();
        fArr[7] = bitmap4.getHeight();
        Matrix matrix = this.d;
        matrix.mapPoints(fArr);
        float[] fArr2 = this.f25076h;
        fArr2[0] = 0.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 100.0f;
        fArr2[3] = 0.0f;
        fArr2[4] = 100.0f;
        fArr2[5] = 100.0f;
        fArr2[6] = 0.0f;
        fArr2[7] = 100.0f;
        matrix.mapPoints(fArr2);
    }

    public final void g(int i2) {
        if (this.f25078j != null) {
            int i3 = i2 < 0 ? (i2 % 360) + 360 : i2 % 360;
            CropOverlayView cropOverlayView = this.f25073c;
            cropOverlayView.getClass();
            boolean z = !cropOverlayView.B && ((46 <= i3 && i3 < 135) || (216 <= i3 && i3 < 305));
            RectF rectF = BitmapUtils.f25039c;
            rectF.set(cropOverlayView.getCropWindowRect());
            float fHeight = (z ? rectF.height() : rectF.width()) / 2.0f;
            float fWidth = (z ? rectF.width() : rectF.height()) / 2.0f;
            if (z) {
                boolean z2 = this.m;
                this.m = this.n;
                this.n = z2;
            }
            Matrix matrix = this.d;
            Matrix matrix2 = this.f25074e;
            matrix.invert(matrix2);
            float[] fArr = BitmapUtils.d;
            fArr[0] = rectF.centerX();
            fArr[1] = rectF.centerY();
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 1.0f;
            fArr[5] = 0.0f;
            matrix2.mapPoints(fArr);
            this.l = (this.l + i3) % 360;
            b(getWidth(), getHeight(), true, false);
            float[] fArr2 = BitmapUtils.f25040e;
            matrix.mapPoints(fArr2, fArr);
            float fSqrt = this.I / ((float) Math.sqrt(Math.pow(fArr2[5] - fArr2[3], 2.0d) + Math.pow(fArr2[4] - fArr2[2], 2.0d)));
            this.I = fSqrt;
            this.I = Math.max(fSqrt, 1.0f);
            b(getWidth(), getHeight(), true, false);
            matrix.mapPoints(fArr2, fArr);
            float fSqrt2 = (float) Math.sqrt(Math.pow(fArr2[5] - fArr2[3], 2.0d) + Math.pow(fArr2[4] - fArr2[2], 2.0d));
            float f2 = fHeight * fSqrt2;
            float f3 = fWidth * fSqrt2;
            float f4 = fArr2[0];
            float f5 = fArr2[1];
            rectF.set(f4 - f2, f5 - f3, f4 + f2, f5 + f3);
            cropOverlayView.g();
            cropOverlayView.setCropWindowRect(rectF);
            b(getWidth(), getHeight(), true, false);
            e(false, false);
            RectF cropWindowRect = cropOverlayView.getCropWindowRect();
            cropOverlayView.e(cropWindowRect);
            CropWindowHandler cropWindowHandler = cropOverlayView.f25090h;
            cropWindowHandler.getClass();
            cropWindowHandler.f25097a.set(cropWindowRect);
        }
    }

    public final Pair<Integer, Integer> getAspectRatio() {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        return new Pair<>(Integer.valueOf(cropOverlayView.getC()), Integer.valueOf(cropOverlayView.getD()));
    }

    public final CropCornerShape getCornerShape() {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        return cropOverlayView.getCornerShape();
    }

    /* JADX INFO: renamed from: getCropLabelText, reason: from getter */
    public final String getV() {
        return this.v;
    }

    /* JADX INFO: renamed from: getCropLabelTextColor, reason: from getter */
    public final int getX() {
        return this.x;
    }

    /* JADX INFO: renamed from: getCropLabelTextSize, reason: from getter */
    public final float getW() {
        return this.w;
    }

    public final float[] getCropPoints() {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        RectF cropWindowRect = cropOverlayView.getCropWindowRect();
        float f2 = cropWindowRect.left;
        float f3 = cropWindowRect.top;
        float f4 = cropWindowRect.right;
        float f5 = cropWindowRect.bottom;
        float[] fArr = {f2, f3, f4, f3, f4, f5, f2, f5};
        Matrix matrix = this.d;
        Matrix matrix2 = this.f25074e;
        matrix.invert(matrix2);
        matrix2.mapPoints(fArr);
        float[] fArr2 = new float[8];
        for (int i2 = 0; i2 < 8; i2++) {
            fArr2[i2] = fArr[i2] * this.H;
        }
        return fArr2;
    }

    public final Rect getCropRect() {
        int i2 = this.H;
        Bitmap bitmap = this.f25078j;
        if (bitmap == null) {
            return null;
        }
        float[] cropPoints = getCropPoints();
        int width = bitmap.getWidth() * i2;
        int height = i2 * bitmap.getHeight();
        Rect rect = BitmapUtils.f25037a;
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        return BitmapUtils.m(cropPoints, width, height, cropOverlayView.B, cropOverlayView.getC(), cropOverlayView.getD());
    }

    public final CropShape getCropShape() {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        return cropOverlayView.getCropShape();
    }

    public final RectF getCropWindowRect() {
        CropOverlayView cropOverlayView = this.f25073c;
        if (cropOverlayView != null) {
            return cropOverlayView.getCropWindowRect();
        }
        return null;
    }

    public final Bitmap getCroppedImage() {
        return d(RequestSizeOptions.RESIZE_INSIDE);
    }

    public final Uri getCustomOutputUri() {
        return this.customOutputUri;
    }

    public final Guidelines getGuidelines() {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        return cropOverlayView.getGuidelines();
    }

    /* JADX INFO: renamed from: getImageResource, reason: from getter */
    public final int getQ() {
        return this.q;
    }

    public final Uri getImageUri() {
        return this.imageUri;
    }

    /* JADX INFO: renamed from: getMaxZoom, reason: from getter */
    public final int getA() {
        return this.A;
    }

    /* JADX INFO: renamed from: getRotatedDegrees, reason: from getter */
    public final int getL() {
        return this.l;
    }

    /* JADX INFO: renamed from: getScaleType, reason: from getter */
    public final ScaleType getR() {
        return this.r;
    }

    public final Rect getWholeImageRect() {
        int i2 = this.H;
        Bitmap bitmap = this.f25078j;
        if (bitmap == null) {
            return null;
        }
        return new Rect(0, 0, bitmap.getWidth() * i2, bitmap.getHeight() * i2);
    }

    public final void h(Bitmap bitmap, int i2, Uri uri, int i3, int i4) {
        Bitmap bitmap2 = this.f25078j;
        if (bitmap2 == null || !Intrinsics.c(bitmap2, bitmap)) {
            c();
            this.f25078j = bitmap;
            this.f25072b.setImageBitmap(bitmap);
            this.imageUri = uri;
            this.q = i2;
            this.H = i3;
            this.l = i4;
            b(getWidth(), getHeight(), true, false);
            CropOverlayView cropOverlayView = this.f25073c;
            if (cropOverlayView != null) {
                cropOverlayView.g();
                i();
            }
        }
    }

    public final void i() {
        CropOverlayView cropOverlayView = this.f25073c;
        if (cropOverlayView != null) {
            cropOverlayView.setVisibility((!this.t || this.f25078j == null) ? 4 : 0);
        }
    }

    public final void j() {
        this.f25075f.setVisibility(this.y && ((this.f25078j == null && this.O != null) || this.P != null) ? 0 : 4);
    }

    public final void k(boolean z) {
        Bitmap bitmap = this.f25078j;
        CropOverlayView cropOverlayView = this.f25073c;
        if (bitmap != null && !z) {
            float f2 = this.H * 100.0f;
            Rect rect = BitmapUtils.f25037a;
            float[] fArr = this.f25076h;
            fArr.getClass();
            float fO = f2 / (BitmapUtils.o(fArr) - BitmapUtils.n(fArr));
            float fL = (this.H * 100.0f) / (BitmapUtils.l(fArr) - BitmapUtils.p(fArr));
            cropOverlayView.getClass();
            float width = getWidth();
            float height = getHeight();
            CropWindowHandler cropWindowHandler = cropOverlayView.f25090h;
            cropWindowHandler.f25100e = width;
            cropWindowHandler.f25101f = height;
            cropWindowHandler.f25105k = fO;
            cropWindowHandler.l = fL;
        }
        cropOverlayView.getClass();
        cropOverlayView.h(getWidth(), getHeight(), z ? null : this.g);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (this.o <= 0 || this.p <= 0) {
            k(true);
            return;
        }
        if (this.f25078j == null) {
            k(true);
            return;
        }
        float f2 = i4 - i2;
        float f3 = i5 - i3;
        b(f2, f3, true, false);
        RectF rectF = this.L;
        if (rectF == null) {
            if (this.N) {
                this.N = false;
                e(false, false);
                return;
            }
            return;
        }
        int i6 = this.M;
        if (i6 != this.f25079k) {
            this.l = i6;
            b(f2, f3, true, false);
            this.M = 0;
        }
        this.d.mapRect(this.L);
        CropOverlayView cropOverlayView = this.f25073c;
        if (cropOverlayView != null) {
            cropOverlayView.setCropWindowRect(rectF);
        }
        e(false, false);
        if (cropOverlayView != null) {
            RectF cropWindowRect = cropOverlayView.getCropWindowRect();
            cropOverlayView.e(cropWindowRect);
            CropWindowHandler cropWindowHandler = cropOverlayView.f25090h;
            cropWindowHandler.getClass();
            cropWindowHandler.f25097a.set(cropWindowRect);
        }
        this.L = null;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        int width;
        int height;
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        Bitmap bitmap = this.f25078j;
        if (bitmap == null) {
            setMeasuredDimension(size, size2);
            return;
        }
        if (size2 == 0) {
            size2 = bitmap.getHeight();
        }
        double width2 = size < bitmap.getWidth() ? ((double) size) / ((double) bitmap.getWidth()) : Double.POSITIVE_INFINITY;
        double height2 = size2 < bitmap.getHeight() ? ((double) size2) / ((double) bitmap.getHeight()) : Double.POSITIVE_INFINITY;
        if (width2 == Double.POSITIVE_INFINITY && height2 == Double.POSITIVE_INFINITY) {
            width = bitmap.getWidth();
            height = bitmap.getHeight();
        } else if (width2 <= height2) {
            height = (int) (((double) bitmap.getHeight()) * width2);
            width = size;
        } else {
            width = (int) (((double) bitmap.getWidth()) * height2);
            height = size2;
        }
        R.getClass();
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(width, size);
        } else if (mode != 1073741824) {
            size = width;
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(height, size2);
        } else if (mode2 != 1073741824) {
            size2 = height;
        }
        this.o = size;
        this.p = size2;
        setMeasuredDimension(size, size2);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0067  */
    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        CropImageView cropImageView;
        Bitmap bitmap;
        parcelable.getClass();
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        if (this.O == null && this.imageUri == null && this.f25078j == null && this.q == 0) {
            Bundle bundle = (Bundle) parcelable;
            Parcelable parcelable2 = bundle.getParcelable("LOADED_IMAGE_URI");
            if (!(parcelable2 instanceof Uri)) {
                parcelable2 = null;
            }
            Uri uri = (Uri) parcelable2;
            if (uri != null) {
                String string = bundle.getString("LOADED_IMAGE_STATE_BITMAP_KEY");
                if (string != null) {
                    Rect rect = BitmapUtils.f25037a;
                    Pair pair = BitmapUtils.g;
                    if (pair != null) {
                        bitmap = Intrinsics.c(pair.first, string) ? (Bitmap) ((WeakReference) pair.second).get() : null;
                    } else {
                        bitmap = null;
                    }
                    BitmapUtils.g = null;
                    if (bitmap == null || bitmap.isRecycled()) {
                        cropImageView = this;
                    } else {
                        cropImageView = this;
                        cropImageView.h(bitmap, 0, uri, bundle.getInt("LOADED_SAMPLE_SIZE"), 0);
                    }
                } else {
                    cropImageView = this;
                }
                if (cropImageView.imageUri == null) {
                    cropImageView.setImageUriAsync(uri);
                }
            } else {
                cropImageView = this;
                int i2 = bundle.getInt("LOADED_IMAGE_RESOURCE");
                if (i2 > 0) {
                    cropImageView.setImageResource(i2);
                } else {
                    Parcelable parcelable3 = bundle.getParcelable("LOADING_IMAGE_URI");
                    if (!(parcelable3 instanceof Uri)) {
                        parcelable3 = null;
                    }
                    Uri uri2 = (Uri) parcelable3;
                    if (uri2 != null) {
                        cropImageView.setImageUriAsync(uri2);
                    }
                }
            }
            int i3 = bundle.getInt("DEGREES_ROTATED");
            cropImageView.M = i3;
            cropImageView.l = i3;
            Parcelable parcelable4 = bundle.getParcelable("INITIAL_CROP_RECT");
            if (!(parcelable4 instanceof Rect)) {
                parcelable4 = null;
            }
            Rect rect2 = (Rect) parcelable4;
            CropOverlayView cropOverlayView = cropImageView.f25073c;
            if (rect2 != null && (rect2.width() > 0 || rect2.height() > 0)) {
                cropOverlayView.getClass();
                cropOverlayView.setInitialCropWindowRect(rect2);
            }
            Parcelable parcelable5 = bundle.getParcelable("CROP_WINDOW_RECT");
            if (!(parcelable5 instanceof RectF)) {
                parcelable5 = null;
            }
            RectF rectF = (RectF) parcelable5;
            if (rectF != null && (rectF.width() > Call.Parameters.DEFAULT_CAMERA_ZOOM || rectF.height() > Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                cropImageView.L = rectF;
            }
            cropOverlayView.getClass();
            String string2 = bundle.getString("CROP_SHAPE");
            string2.getClass();
            cropOverlayView.setCropShape(CropShape.valueOf(string2));
            cropImageView.z = bundle.getBoolean("CROP_AUTO_ZOOM_ENABLED");
            cropImageView.A = bundle.getInt("CROP_MAX_ZOOM");
            cropImageView.m = bundle.getBoolean("CROP_FLIP_HORIZONTALLY");
            cropImageView.n = bundle.getBoolean("CROP_FLIP_VERTICALLY");
            boolean z = bundle.getBoolean("SHOW_CROP_LABEL");
            cropImageView.u = z;
            cropOverlayView.setCropperTextLabelVisibility(z);
        } else {
            cropImageView = this;
        }
        Parcelable parcelable6 = ((Bundle) parcelable).getParcelable("instanceState");
        super.onRestoreInstanceState(parcelable6 != null ? parcelable6 : null);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Uri uriS;
        if (this.imageUri == null && this.f25078j == null && this.q < 1) {
            return super.onSaveInstanceState();
        }
        Bundle bundle = new Bundle();
        if (this.isSaveBitmapToInstanceState && this.imageUri == null && this.q < 1) {
            Rect rect = BitmapUtils.f25037a;
            Context context = getContext();
            context.getClass();
            Bitmap bitmap = this.f25078j;
            Uri uri = this.customOutputUri;
            try {
                bitmap.getClass();
                uriS = BitmapUtils.s(context, bitmap, Bitmap.CompressFormat.JPEG, 95, uri);
            } catch (Exception unused) {
                uriS = null;
            }
        } else {
            uriS = this.imageUri;
        }
        if (uriS != null && this.f25078j != null) {
            String string = UUID.randomUUID().toString();
            string.getClass();
            Rect rect2 = BitmapUtils.f25037a;
            BitmapUtils.g = new Pair(string, new WeakReference(this.f25078j));
            bundle.putString("LOADED_IMAGE_STATE_BITMAP_KEY", string);
        }
        WeakReference weakReference = this.O;
        BitmapLoadingWorkerJob bitmapLoadingWorkerJob = weakReference != null ? (BitmapLoadingWorkerJob) weakReference.get() : null;
        if (bitmapLoadingWorkerJob != null) {
            bundle.putParcelable("LOADING_IMAGE_URI", bitmapLoadingWorkerJob.f25025c);
        }
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putParcelable("LOADED_IMAGE_URI", uriS);
        bundle.putInt("LOADED_IMAGE_RESOURCE", this.q);
        bundle.putInt("LOADED_SAMPLE_SIZE", this.H);
        bundle.putInt("DEGREES_ROTATED", this.l);
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        bundle.putParcelable("INITIAL_CROP_RECT", cropOverlayView.getM());
        RectF rectF = BitmapUtils.f25039c;
        rectF.set(cropOverlayView.getCropWindowRect());
        Matrix matrix = this.d;
        Matrix matrix2 = this.f25074e;
        matrix.invert(matrix2);
        matrix2.mapRect(rectF);
        bundle.putParcelable("CROP_WINDOW_RECT", rectF);
        CropShape cropShape = cropOverlayView.getCropShape();
        cropShape.getClass();
        bundle.putString("CROP_SHAPE", cropShape.name());
        bundle.putBoolean("CROP_AUTO_ZOOM_ENABLED", this.z);
        bundle.putInt("CROP_MAX_ZOOM", this.A);
        bundle.putBoolean("CROP_FLIP_HORIZONTALLY", this.m);
        bundle.putBoolean("CROP_FLIP_VERTICALLY", this.n);
        bundle.putBoolean("SHOW_CROP_LABEL", this.u);
        return bundle;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.N = i4 > 0 && i5 > 0;
    }

    public final void setAutoZoomEnabled(boolean z) {
        if (this.z != z) {
            this.z = z;
            e(false, false);
            CropOverlayView cropOverlayView = this.f25073c;
            cropOverlayView.getClass();
            cropOverlayView.invalidate();
        }
    }

    public final void setCenterMoveEnabled(boolean centerMoveEnabled) {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        if (cropOverlayView.g != centerMoveEnabled) {
            cropOverlayView.g = centerMoveEnabled;
            e(false, false);
            cropOverlayView.invalidate();
        }
    }

    public final void setCornerShape(CropCornerShape cropCornerShape) {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        cropCornerShape.getClass();
        cropOverlayView.setCropCornerShape(cropCornerShape);
    }

    public final void setCropLabelText(String str) {
        str.getClass();
        this.v = str;
        CropOverlayView cropOverlayView = this.f25073c;
        if (cropOverlayView != null) {
            cropOverlayView.setCropLabelText(str);
        }
    }

    public final void setCropLabelTextColor(int i2) {
        this.x = i2;
        CropOverlayView cropOverlayView = this.f25073c;
        if (cropOverlayView != null) {
            cropOverlayView.setCropLabelTextColor(i2);
        }
    }

    public final void setCropLabelTextSize(float f2) {
        this.w = getW();
        CropOverlayView cropOverlayView = this.f25073c;
        if (cropOverlayView != null) {
            cropOverlayView.setCropLabelTextSize(f2);
        }
    }

    public final void setCropRect(Rect rect) {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        cropOverlayView.setInitialCropWindowRect(rect);
    }

    public final void setCropShape(CropShape cropShape) {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        cropShape.getClass();
        cropOverlayView.setCropShape(cropShape);
    }

    public final void setCustomOutputUri(Uri uri) {
        this.customOutputUri = uri;
    }

    public final void setFixedAspectRatio(boolean fixAspectRatio) {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        cropOverlayView.setFixedAspectRatio(fixAspectRatio);
    }

    public final void setFlippedHorizontally(boolean z) {
        if (this.m != z) {
            this.m = z;
            b(getWidth(), getHeight(), true, false);
        }
    }

    public final void setFlippedVertically(boolean z) {
        if (this.n != z) {
            this.n = z;
            b(getWidth(), getHeight(), true, false);
        }
    }

    public final void setGuidelines(Guidelines guidelines) {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        guidelines.getClass();
        cropOverlayView.setGuidelines(guidelines);
    }

    public final void setImageBitmap(Bitmap bitmap) {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        cropOverlayView.setInitialCropWindowRect(null);
        h(bitmap, 0, null, 1, 0);
    }

    public final void setImageCropOptions(CropImageOptions options) {
        options.getClass();
        ScaleType scaleType = options.f25070j;
        boolean z = options.o;
        boolean z2 = options.m;
        boolean z3 = options.f25071k;
        setScaleType(scaleType);
        this.customOutputUri = options.Q;
        CropOverlayView cropOverlayView = this.f25073c;
        if (cropOverlayView != null) {
            cropOverlayView.setInitialAttributeValues(options);
        }
        setMultiTouchEnabled(options.p);
        setCenterMoveEnabled(options.q);
        setShowCropOverlay(z3);
        setShowProgressBar(z2);
        setAutoZoomEnabled(z);
        setMaxZoom(options.s);
        setFlippedHorizontally(options.d1);
        setFlippedVertically(options.e1);
        this.z = z;
        this.t = z3;
        this.y = z2;
        this.f25075f.setIndeterminateTintList(ColorStateList.valueOf(options.n));
    }

    public final void setImageResource(int i2) {
        if (i2 != 0) {
            CropOverlayView cropOverlayView = this.f25073c;
            cropOverlayView.getClass();
            cropOverlayView.setInitialCropWindowRect(null);
            h(BitmapFactory.decodeResource(getResources(), i2), i2, null, 1, 0);
        }
    }

    public final void setImageUriAsync(Uri uri) {
        BitmapLoadingWorkerJob bitmapLoadingWorkerJob;
        if (uri != null) {
            WeakReference weakReference = this.O;
            if (weakReference != null && (bitmapLoadingWorkerJob = (BitmapLoadingWorkerJob) weakReference.get()) != null) {
                bitmapLoadingWorkerJob.g.cancel((CancellationException) null);
            }
            c();
            CropOverlayView cropOverlayView = this.f25073c;
            cropOverlayView.getClass();
            cropOverlayView.setInitialCropWindowRect(null);
            Context context = getContext();
            context.getClass();
            WeakReference weakReference2 = new WeakReference(new BitmapLoadingWorkerJob(context, this, uri));
            this.O = weakReference2;
            BitmapLoadingWorkerJob bitmapLoadingWorkerJob2 = (BitmapLoadingWorkerJob) weakReference2.get();
            if (bitmapLoadingWorkerJob2 != null) {
                bitmapLoadingWorkerJob2.g = (JobSupport) BuildersKt.c(bitmapLoadingWorkerJob2, Dispatchers.f74659a, null, new BitmapLoadingWorkerJob$start$1(bitmapLoadingWorkerJob2, null), 2);
            }
            j();
        }
    }

    public final void setMaxZoom(int i2) {
        if (this.A == i2 || i2 <= 0) {
            return;
        }
        this.A = i2;
        e(false, false);
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        cropOverlayView.invalidate();
    }

    public final void setMultiTouchEnabled(boolean multiTouchEnabled) {
        CropOverlayView cropOverlayView = this.f25073c;
        cropOverlayView.getClass();
        if (cropOverlayView.f25089f != multiTouchEnabled) {
            cropOverlayView.f25089f = multiTouchEnabled;
            if (multiTouchEnabled && cropOverlayView.f25088e == null) {
                cropOverlayView.f25088e = new ScaleGestureDetector(cropOverlayView.getContext(), cropOverlayView.new ScaleListener());
            }
            e(false, false);
            cropOverlayView.invalidate();
        }
    }

    public final void setOnCropImageCompleteListener(OnCropImageCompleteListener listener) {
        this.F = listener;
    }

    public final void setOnCropWindowChangedListener(OnSetCropWindowChangeListener listener) {
        this.D = listener;
    }

    public final void setOnSetCropOverlayMovedListener(OnSetCropOverlayMovedListener listener) {
        this.C = listener;
    }

    public final void setOnSetCropOverlayReleasedListener(OnSetCropOverlayReleasedListener listener) {
        this.B = listener;
    }

    public final void setOnSetImageUriCompleteListener(OnSetImageUriCompleteListener listener) {
        this.E = listener;
    }

    public final void setRotatedDegrees(int i2) {
        int i3 = this.l;
        if (i3 != i2) {
            g(i2 - i3);
        }
    }

    public final void setSaveBitmapToInstanceState(boolean z) {
        this.isSaveBitmapToInstanceState = z;
    }

    public final void setScaleType(ScaleType scaleType) {
        scaleType.getClass();
        if (scaleType != this.r) {
            this.r = scaleType;
            this.I = 1.0f;
            this.K = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.J = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            CropOverlayView cropOverlayView = this.f25073c;
            if (cropOverlayView != null) {
                cropOverlayView.g();
            }
            requestLayout();
        }
    }

    public final void setShowCropLabel(boolean z) {
        if (this.u != z) {
            this.u = z;
            CropOverlayView cropOverlayView = this.f25073c;
            if (cropOverlayView != null) {
                cropOverlayView.setCropperTextLabelVisibility(z);
            }
        }
    }

    public final void setShowCropOverlay(boolean z) {
        if (this.t != z) {
            this.t = z;
            i();
        }
    }

    public final void setShowProgressBar(boolean z) {
        if (this.y != z) {
            this.y = z;
            j();
        }
    }

    public final void setSnapRadius(float snapRadius) {
        if (snapRadius >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            CropOverlayView cropOverlayView = this.f25073c;
            cropOverlayView.getClass();
            cropOverlayView.setSnapRadius(snapRadius);
        }
    }

    public /* synthetic */ CropImageView(Context context, AttributeSet attributeSet, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CropImageView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        context.getClass();
    }
}
