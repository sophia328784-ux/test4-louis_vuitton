package com.canhub.cropper;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.TypedValue;
import com.batch.android.q0.b;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u0001Bá\u0005\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0003\u0010\n\u001a\u00020\t\u0012\b\b\u0003\u0010\u000b\u001a\u00020\t\u0012\b\b\u0003\u0010\f\u001a\u00020\t\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u001b\u001a\u00020\t\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0014\u0012\b\b\u0003\u0010\u001f\u001a\u00020\t\u0012\b\b\u0003\u0010 \u001a\u00020\u0014\u0012\b\b\u0003\u0010!\u001a\u00020\t\u0012\b\b\u0003\u0010\"\u001a\u00020\t\u0012\b\b\u0003\u0010#\u001a\u00020\t\u0012\b\b\u0003\u0010$\u001a\u00020\u0014\u0012\b\b\u0003\u0010%\u001a\u00020\u0014\u0012\b\b\u0003\u0010&\u001a\u00020\t\u0012\b\b\u0003\u0010'\u001a\u00020\u0014\u0012\b\b\u0003\u0010(\u001a\u00020\u0014\u0012\b\b\u0003\u0010)\u001a\u00020\u0014\u0012\b\b\u0003\u0010*\u001a\u00020\u0014\u0012\b\b\u0003\u0010+\u001a\u00020\u0014\u0012\b\b\u0003\u0010,\u001a\u00020\u0014\u0012\b\b\u0003\u0010-\u001a\u00020\u0014\u0012\b\b\u0003\u0010.\u001a\u00020\u0014\u0012\b\b\u0002\u00100\u001a\u00020/\u0012\b\b\u0003\u00101\u001a\u00020\u0014\u0012\n\b\u0003\u00102\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u000103\u0012\b\b\u0002\u00106\u001a\u000205\u0012\b\b\u0002\u00107\u001a\u00020\u0014\u0012\b\b\u0003\u00108\u001a\u00020\u0014\u0012\b\b\u0003\u00109\u001a\u00020\u0014\u0012\b\b\u0002\u0010;\u001a\u00020:\u0012\b\b\u0002\u0010<\u001a\u00020\u0002\u0012\n\b\u0002\u0010>\u001a\u0004\u0018\u00010=\u0012\b\b\u0002\u0010?\u001a\u00020\u0014\u0012\b\b\u0002\u0010@\u001a\u00020\u0002\u0012\b\b\u0002\u0010A\u001a\u00020\u0002\u0012\b\b\u0002\u0010B\u001a\u00020\u0002\u0012\b\b\u0002\u0010C\u001a\u00020\u0014\u0012\b\b\u0002\u0010D\u001a\u00020\u0002\u0012\b\b\u0002\u0010E\u001a\u00020\u0002\u0012\n\b\u0002\u0010F\u001a\u0004\u0018\u00010/\u0012\b\b\u0003\u0010G\u001a\u00020\u0014\u0012\b\b\u0002\u0010H\u001a\u00020\u0002\u0012\b\b\u0002\u0010I\u001a\u00020\u0002\u0012\n\b\u0002\u0010K\u001a\u0004\u0018\u00010J\u0012\u0010\b\u0002\u0010M\u001a\n\u0012\u0004\u0012\u00020J\u0018\u00010L\u0012\b\b\u0003\u0010N\u001a\u00020\t\u0012\b\b\u0003\u0010O\u001a\u00020\u0014\u0012\n\b\u0002\u0010P\u001a\u0004\u0018\u00010J\u0012\b\b\u0003\u0010Q\u001a\u00020\u0014\u0012\n\b\u0003\u0010R\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0003\u0010S\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0003\u0010T\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0003\u0010U\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\bV\u0010W¨\u0006X"}, d2 = {"Lcom/canhub/cropper/CropImageOptions;", "Landroid/os/Parcelable;", "", "imageSourceIncludeGallery", "imageSourceIncludeCamera", "Lcom/canhub/cropper/CropImageView$CropShape;", "cropShape", "Lcom/canhub/cropper/CropImageView$CropCornerShape;", "cornerShape", "", "cropCornerRadius", "snapRadius", "touchRadius", "Lcom/canhub/cropper/CropImageView$Guidelines;", "guidelines", "Lcom/canhub/cropper/CropImageView$ScaleType;", "scaleType", "showCropOverlay", "showCropLabel", "showProgressBar", "", "progressBarColor", "autoZoomEnabled", "multiTouchEnabled", "centerMoveEnabled", "canChangeCropWindow", "maxZoom", "initialCropWindowPaddingRatio", "fixAspectRatio", "aspectRatioX", "aspectRatioY", "borderLineThickness", "borderLineColor", "borderCornerThickness", "borderCornerOffset", "borderCornerLength", "borderCornerColor", "circleCornerFillColorHexValue", "guidelinesThickness", "guidelinesColor", "backgroundColor", "minCropWindowWidth", "minCropWindowHeight", "minCropResultWidth", "minCropResultHeight", "maxCropResultWidth", "maxCropResultHeight", "", "activityTitle", "activityMenuIconColor", "activityMenuTextColor", "Landroid/net/Uri;", "customOutputUri", "Landroid/graphics/Bitmap$CompressFormat;", "outputCompressFormat", "outputCompressQuality", "outputRequestWidth", "outputRequestHeight", "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;", "outputRequestSizeOptions", "noOutputImage", "Landroid/graphics/Rect;", "initialCropWindowRectangle", "initialRotation", "allowRotation", "allowFlipping", "allowCounterRotation", "rotationDegrees", "flipHorizontally", "flipVertically", "cropMenuCropButtonTitle", "cropMenuCropButtonIcon", "skipEditing", "showIntentChooser", "", "intentChooserTitle", "", "intentChooserPriorityList", "cropperLabelTextSize", "cropperLabelTextColor", "cropperLabelText", "activityBackgroundColor", "toolbarColor", "toolbarTitleColor", "toolbarBackButtonColor", "toolbarTintColor", "<init>", "(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class CropImageOptions implements Parcelable {
    public static final Parcelable.Creator<CropImageOptions> CREATOR = new Creator();
    public final float A;
    public final float B;
    public final int C;
    public final int D;
    public final float E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final CharSequence N;
    public final int O;
    public final Integer P;
    public final Uri Q;
    public final Bitmap.CompressFormat R;
    public final int S;
    public final int T;
    public final int V;
    public final CropImageView.RequestSizeOptions W;
    public final boolean X;
    public final Rect Y;
    public final int Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f25064b;
    public final boolean b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f25065c;
    public final int c1;
    public final CropImageView.CropShape d;
    public final boolean d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CropImageView.CropCornerShape f25066e;
    public final boolean e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f25067f;
    public final CharSequence f1;
    public final float g;
    public final int g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f25068h;
    public final boolean h0;
    public final boolean h1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CropImageView.Guidelines f25069i;
    public final boolean i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CropImageView.ScaleType f25070j;
    public final String j1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f25071k;
    public final List k1;
    public final boolean l;
    public final float l1;
    public final boolean m;
    public final int m1;
    public final int n;
    public final String n1;
    public final boolean o;
    public final int o1;
    public final boolean p;
    public final Integer p1;
    public final boolean q;
    public final Integer q1;
    public final boolean r;
    public final Integer r1;
    public final int s;
    public final Integer s1;
    public final float t;
    public final boolean t0;
    public final boolean u;
    public final int v;
    public final int w;
    public final float x;
    public final int y;
    public final float z;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CropImageOptions> {
        @Override // android.os.Parcelable.Creator
        public final CropImageOptions createFromParcel(Parcel parcel) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            boolean z7;
            boolean z8;
            boolean z9;
            Integer num;
            Integer numValueOf;
            parcel.getClass();
            boolean z10 = parcel.readInt() != 0;
            boolean z11 = parcel.readInt() != 0;
            CropImageView.CropShape cropShapeValueOf = CropImageView.CropShape.valueOf(parcel.readString());
            CropImageView.CropCornerShape cropCornerShapeValueOf = CropImageView.CropCornerShape.valueOf(parcel.readString());
            float f2 = parcel.readFloat();
            float f3 = parcel.readFloat();
            boolean z12 = true;
            float f4 = parcel.readFloat();
            CropImageView.Guidelines guidelinesValueOf = CropImageView.Guidelines.valueOf(parcel.readString());
            CropImageView.ScaleType scaleTypeValueOf = CropImageView.ScaleType.valueOf(parcel.readString());
            if (parcel.readInt() == 0) {
                z12 = false;
            }
            boolean z13 = parcel.readInt() != 0;
            if (parcel.readInt() != 0) {
                z = false;
                z3 = z12;
                z2 = z3;
            } else {
                z = false;
                z2 = z12;
                z3 = false;
            }
            int i2 = parcel.readInt();
            boolean z14 = parcel.readInt() != 0 ? z2 : z;
            if (parcel.readInt() != 0) {
                z = z2;
            }
            if (parcel.readInt() == 0) {
                z2 = z;
            }
            if (parcel.readInt() != 0) {
                z5 = z;
                z4 = z2;
            } else {
                z4 = z;
                z5 = z4;
            }
            int i3 = parcel.readInt();
            boolean z15 = z2;
            float f5 = parcel.readFloat();
            if (parcel.readInt() != 0) {
                z7 = z5;
                z6 = z15;
            } else {
                z6 = z5;
                z7 = z6;
            }
            int i4 = parcel.readInt();
            int i5 = parcel.readInt();
            float f6 = parcel.readFloat();
            boolean z16 = z7;
            int i6 = parcel.readInt();
            float f7 = parcel.readFloat();
            float f8 = parcel.readFloat();
            float f9 = parcel.readFloat();
            int i7 = parcel.readInt();
            int i8 = parcel.readInt();
            float f10 = parcel.readFloat();
            int i9 = parcel.readInt();
            int i10 = parcel.readInt();
            int i11 = parcel.readInt();
            int i12 = parcel.readInt();
            int i13 = parcel.readInt();
            int i14 = parcel.readInt();
            int i15 = parcel.readInt();
            int i16 = parcel.readInt();
            boolean z17 = z10;
            Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            CharSequence charSequence = (CharSequence) creator.createFromParcel(parcel);
            int i17 = parcel.readInt();
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            boolean z18 = z11;
            Uri uri = (Uri) parcel.readParcelable(CropImageOptions.class.getClassLoader());
            Bitmap.CompressFormat compressFormatValueOf = Bitmap.CompressFormat.valueOf(parcel.readString());
            Integer num2 = numValueOf2;
            int i18 = parcel.readInt();
            int i19 = parcel.readInt();
            int i20 = parcel.readInt();
            CropImageView.RequestSizeOptions requestSizeOptionsValueOf = CropImageView.RequestSizeOptions.valueOf(parcel.readString());
            if (parcel.readInt() != 0) {
                z8 = z15;
                z9 = z8;
            } else {
                z8 = z15;
                z9 = z16;
            }
            Rect rect = (Rect) parcel.readParcelable(CropImageOptions.class.getClassLoader());
            int i21 = parcel.readInt();
            boolean z19 = parcel.readInt() != 0 ? z8 : z16;
            boolean z20 = parcel.readInt() != 0 ? z8 : z16;
            if (parcel.readInt() == 0) {
                z8 = z16;
            }
            int i22 = parcel.readInt();
            boolean z21 = parcel.readInt() != 0 ? z8 : z16;
            boolean z22 = parcel.readInt() != 0 ? z8 : z16;
            CharSequence charSequence2 = (CharSequence) creator.createFromParcel(parcel);
            int i23 = parcel.readInt();
            boolean z23 = parcel.readInt() != 0 ? z8 : z16;
            if (parcel.readInt() == 0) {
                z8 = z16;
            }
            String string = parcel.readString();
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            float f11 = parcel.readFloat();
            int i24 = parcel.readInt();
            String string2 = parcel.readString();
            int i25 = parcel.readInt();
            Integer numValueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf4 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf5 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            if (parcel.readInt() == 0) {
                Integer num3 = numValueOf5;
                numValueOf = null;
                num = num3;
            } else {
                num = numValueOf5;
                numValueOf = Integer.valueOf(parcel.readInt());
            }
            return new CropImageOptions(z17, z18, cropShapeValueOf, cropCornerShapeValueOf, f2, f3, f4, guidelinesValueOf, scaleTypeValueOf, z12, z13, z3, i2, z14, z, z2, z4, i3, f5, z6, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num2, uri, compressFormatValueOf, i18, i19, i20, requestSizeOptionsValueOf, z9, rect, i21, z19, z20, z8, i22, z21, z22, charSequence2, i23, z23, z8, string, arrayListCreateStringArrayList, f11, i24, string2, i25, numValueOf3, numValueOf4, num, numValueOf);
        }

        @Override // android.os.Parcelable.Creator
        public final CropImageOptions[] newArray(int i2) {
            return new CropImageOptions[i2];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List list, float f11, int i24, String str2, int i25, Integer num2, Integer num3, Integer num4, Integer num5, int i26, int i27, int i28, DefaultConstructorMarker defaultConstructorMarker) {
        int i29;
        float fApplyDimension;
        int i30;
        int iApplyDimension;
        boolean z19 = (i26 & 1) != 0 ? true : z;
        boolean z20 = (i26 & 2) != 0 ? true : z2;
        CropImageView.CropShape cropShape2 = (i26 & 4) != 0 ? CropImageView.CropShape.RECTANGLE : cropShape;
        CropImageView.CropCornerShape cropCornerShape2 = (i26 & 8) != 0 ? CropImageView.CropCornerShape.RECTANGLE : cropCornerShape;
        float fApplyDimension2 = (i26 & 16) != 0 ? TypedValue.applyDimension(1, 10.0f, Resources.getSystem().getDisplayMetrics()) : f2;
        float fApplyDimension3 = (i26 & 32) != 0 ? TypedValue.applyDimension(1, 3.0f, Resources.getSystem().getDisplayMetrics()) : f3;
        float fApplyDimension4 = (i26 & 64) != 0 ? TypedValue.applyDimension(1, 24.0f, Resources.getSystem().getDisplayMetrics()) : f4;
        CropImageView.Guidelines guidelines2 = (i26 & 128) != 0 ? CropImageView.Guidelines.ON : guidelines;
        CropImageView.ScaleType scaleType2 = (i26 & 256) != 0 ? CropImageView.ScaleType.FIT_CENTER : scaleType;
        boolean z21 = (i26 & 512) != 0 ? true : z3;
        boolean z22 = (i26 & 1024) != 0 ? false : z4;
        boolean z23 = (i26 & 2048) != 0 ? true : z5;
        int iRgb = (i26 & 4096) != 0 ? Color.rgb(153, 51, 153) : i2;
        boolean z24 = (i26 & 8192) != 0 ? true : z6;
        boolean z25 = z19;
        boolean z26 = (i26 & 16384) != 0 ? false : z7;
        boolean z27 = (i26 & 32768) != 0 ? true : z8;
        boolean z28 = (i26 & 65536) != 0 ? true : z9;
        int i31 = (i26 & 131072) != 0 ? 4 : i3;
        float f12 = (i26 & 262144) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f5;
        boolean z29 = (i26 & 524288) != 0 ? false : z10;
        int i32 = (i26 & 1048576) != 0 ? 1 : i4;
        int i33 = (i26 & PKIFailureInfo.badSenderNonce) != 0 ? 1 : i5;
        float fApplyDimension5 = (i26 & 4194304) != 0 ? TypedValue.applyDimension(1, 3.0f, Resources.getSystem().getDisplayMetrics()) : f6;
        int iArgb = (i26 & 8388608) != 0 ? Color.argb(170, 255, 255, 255) : i6;
        if ((i26 & 16777216) != 0) {
            i29 = 1;
            fApplyDimension = TypedValue.applyDimension(1, 2.0f, Resources.getSystem().getDisplayMetrics());
        } else {
            i29 = 1;
            fApplyDimension = f7;
        }
        float fApplyDimension6 = (i26 & 33554432) != 0 ? TypedValue.applyDimension(i29, 5.0f, Resources.getSystem().getDisplayMetrics()) : f8;
        float fApplyDimension7 = (i26 & 67108864) != 0 ? TypedValue.applyDimension(i29, 14.0f, Resources.getSystem().getDisplayMetrics()) : f9;
        int i34 = (i26 & 134217728) != 0 ? -1 : i7;
        int i35 = (i26 & 268435456) != 0 ? -1 : i8;
        float fApplyDimension8 = (i26 & PKIFailureInfo.duplicateCertReq) != 0 ? TypedValue.applyDimension(1, 1.0f, Resources.getSystem().getDisplayMetrics()) : f10;
        int iArgb2 = (i26 & 1073741824) != 0 ? Color.argb(170, 255, 255, 255) : i9;
        int iArgb3 = (i26 & Integer.MIN_VALUE) != 0 ? Color.argb(119, 0, 0, 0) : i10;
        if ((i27 & 1) != 0) {
            i30 = 1;
            iApplyDimension = (int) TypedValue.applyDimension(1, 42.0f, Resources.getSystem().getDisplayMetrics());
        } else {
            i30 = 1;
            iApplyDimension = i11;
        }
        this(z25, z20, cropShape2, cropCornerShape2, fApplyDimension2, fApplyDimension3, fApplyDimension4, guidelines2, scaleType2, z21, z22, z23, iRgb, z24, z26, z27, z28, i31, f12, z29, i32, i33, fApplyDimension5, iArgb, fApplyDimension, fApplyDimension6, fApplyDimension7, i34, i35, fApplyDimension8, iArgb2, iArgb3, iApplyDimension, (i27 & 2) != 0 ? (int) TypedValue.applyDimension(i30, 42.0f, Resources.getSystem().getDisplayMetrics()) : i12, (i27 & 4) != 0 ? 40 : i13, (i27 & 8) != 0 ? 40 : i14, (i27 & 16) != 0 ? 99999 : i15, (i27 & 32) != 0 ? 99999 : i16, (i27 & 64) != 0 ? "" : charSequence, (i27 & 128) != 0 ? 0 : i17, (i27 & 256) != 0 ? null : num, (i27 & 512) != 0 ? null : uri, (i27 & 1024) != 0 ? Bitmap.CompressFormat.JPEG : compressFormat, (i27 & 2048) != 0 ? 90 : i18, (i27 & 4096) != 0 ? 0 : i19, (i27 & 8192) != 0 ? 0 : i20, (i27 & 16384) != 0 ? CropImageView.RequestSizeOptions.NONE : requestSizeOptions, (i27 & 32768) != 0 ? false : z11, (i27 & 65536) != 0 ? null : rect, (i27 & 131072) != 0 ? -1 : i21, (i27 & 262144) != 0 ? true : z12, (i27 & 524288) != 0 ? true : z13, (i27 & 1048576) != 0 ? false : z14, (i27 & PKIFailureInfo.badSenderNonce) != 0 ? 90 : i22, (i27 & 4194304) != 0 ? false : z15, (i27 & 8388608) != 0 ? false : z16, (i27 & 16777216) != 0 ? null : charSequence2, (i27 & 33554432) != 0 ? 0 : i23, (i27 & 67108864) != 0 ? false : z17, (i27 & 134217728) != 0 ? false : z18, (i27 & 268435456) != 0 ? null : str, (i27 & PKIFailureInfo.duplicateCertReq) != 0 ? EmptyList.f71768b : list, (i27 & 1073741824) != 0 ? TypedValue.applyDimension(2, 20.0f, Resources.getSystem().getDisplayMetrics()) : f11, (i27 & Integer.MIN_VALUE) != 0 ? -1 : i24, (i28 & 1) != 0 ? "" : str2, (i28 & 2) != 0 ? -1 : i25, (i28 & 4) != 0 ? null : num2, (i28 & 8) != 0 ? null : num3, (i28 & 16) != 0 ? null : num4, (i28 & 32) != 0 ? null : num5);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CropImageOptions)) {
            return false;
        }
        CropImageOptions cropImageOptions = (CropImageOptions) obj;
        return this.f25064b == cropImageOptions.f25064b && this.f25065c == cropImageOptions.f25065c && this.d == cropImageOptions.d && this.f25066e == cropImageOptions.f25066e && Float.compare(this.f25067f, cropImageOptions.f25067f) == 0 && Float.compare(this.g, cropImageOptions.g) == 0 && Float.compare(this.f25068h, cropImageOptions.f25068h) == 0 && this.f25069i == cropImageOptions.f25069i && this.f25070j == cropImageOptions.f25070j && this.f25071k == cropImageOptions.f25071k && this.l == cropImageOptions.l && this.m == cropImageOptions.m && this.n == cropImageOptions.n && this.o == cropImageOptions.o && this.p == cropImageOptions.p && this.q == cropImageOptions.q && this.r == cropImageOptions.r && this.s == cropImageOptions.s && Float.compare(this.t, cropImageOptions.t) == 0 && this.u == cropImageOptions.u && this.v == cropImageOptions.v && this.w == cropImageOptions.w && Float.compare(this.x, cropImageOptions.x) == 0 && this.y == cropImageOptions.y && Float.compare(this.z, cropImageOptions.z) == 0 && Float.compare(this.A, cropImageOptions.A) == 0 && Float.compare(this.B, cropImageOptions.B) == 0 && this.C == cropImageOptions.C && this.D == cropImageOptions.D && Float.compare(this.E, cropImageOptions.E) == 0 && this.F == cropImageOptions.F && this.G == cropImageOptions.G && this.H == cropImageOptions.H && this.I == cropImageOptions.I && this.J == cropImageOptions.J && this.K == cropImageOptions.K && this.L == cropImageOptions.L && this.M == cropImageOptions.M && Intrinsics.c(this.N, cropImageOptions.N) && this.O == cropImageOptions.O && Intrinsics.c(this.P, cropImageOptions.P) && Intrinsics.c(this.Q, cropImageOptions.Q) && this.R == cropImageOptions.R && this.S == cropImageOptions.S && this.T == cropImageOptions.T && this.V == cropImageOptions.V && this.W == cropImageOptions.W && this.X == cropImageOptions.X && Intrinsics.c(this.Y, cropImageOptions.Y) && this.Z == cropImageOptions.Z && this.h0 == cropImageOptions.h0 && this.t0 == cropImageOptions.t0 && this.b1 == cropImageOptions.b1 && this.c1 == cropImageOptions.c1 && this.d1 == cropImageOptions.d1 && this.e1 == cropImageOptions.e1 && Intrinsics.c(this.f1, cropImageOptions.f1) && this.g1 == cropImageOptions.g1 && this.h1 == cropImageOptions.h1 && this.i1 == cropImageOptions.i1 && Intrinsics.c(this.j1, cropImageOptions.j1) && Intrinsics.c(this.k1, cropImageOptions.k1) && Float.compare(this.l1, cropImageOptions.l1) == 0 && this.m1 == cropImageOptions.m1 && Intrinsics.c(this.n1, cropImageOptions.n1) && this.o1 == cropImageOptions.o1 && Intrinsics.c(this.p1, cropImageOptions.p1) && Intrinsics.c(this.q1, cropImageOptions.q1) && Intrinsics.c(this.r1, cropImageOptions.r1) && Intrinsics.c(this.s1, cropImageOptions.s1);
    }

    public final int hashCode() {
        int iB = tr.b(this.O, (this.N.hashCode() + tr.b(this.M, tr.b(this.L, tr.b(this.K, tr.b(this.J, tr.b(this.I, tr.b(this.H, tr.b(this.G, tr.b(this.F, pq0.b(tr.b(this.D, tr.b(this.C, pq0.b(pq0.b(pq0.b(tr.b(this.y, pq0.b(tr.b(this.w, tr.b(this.v, o60.b(pq0.b(tr.b(this.s, o60.b(o60.b(o60.b(o60.b(tr.b(this.n, o60.b(o60.b(o60.b((this.f25070j.hashCode() + ((this.f25069i.hashCode() + pq0.b(pq0.b(pq0.b((this.f25066e.hashCode() + ((this.d.hashCode() + o60.b(Boolean.hashCode(this.f25064b) * 31, 31, this.f25065c)) * 31)) * 31, 31, this.f25067f), 31, this.g), 31, this.f25068h)) * 31)) * 31, 31, this.f25071k), 31, this.l), 31, this.m), 31), 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31), 31, this.t), 31, this.u), 31), 31), 31, this.x), 31), 31, this.z), 31, this.A), 31, this.B), 31), 31), 31, this.E), 31), 31), 31), 31), 31), 31), 31), 31)) * 31, 31);
        Integer num = this.P;
        int iHashCode = (iB + (num == null ? 0 : num.hashCode())) * 31;
        Uri uri = this.Q;
        int iB2 = o60.b((this.W.hashCode() + tr.b(this.V, tr.b(this.T, tr.b(this.S, (this.R.hashCode() + ((iHashCode + (uri == null ? 0 : uri.hashCode())) * 31)) * 31, 31), 31), 31)) * 31, 31, this.X);
        Rect rect = this.Y;
        int iB3 = o60.b(o60.b(tr.b(this.c1, o60.b(o60.b(o60.b(tr.b(this.Z, (iB2 + (rect == null ? 0 : rect.hashCode())) * 31, 31), 31, this.h0), 31, this.t0), 31, this.b1), 31), 31, this.d1), 31, this.e1);
        CharSequence charSequence = this.f1;
        int iB4 = o60.b(o60.b(tr.b(this.g1, (iB3 + (charSequence == null ? 0 : charSequence.hashCode())) * 31, 31), 31, this.h1), 31, this.i1);
        String str = this.j1;
        int iHashCode2 = (iB4 + (str == null ? 0 : str.hashCode())) * 31;
        List list = this.k1;
        int iB5 = tr.b(this.m1, pq0.b((iHashCode2 + (list == null ? 0 : list.hashCode())) * 31, 31, this.l1), 31);
        String str2 = this.n1;
        int iB6 = tr.b(this.o1, (iB5 + (str2 == null ? 0 : str2.hashCode())) * 31, 31);
        Integer num2 = this.p1;
        int iHashCode3 = (iB6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.q1;
        int iHashCode4 = (iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.r1;
        int iHashCode5 = (iHashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.s1;
        return iHashCode5 + (num5 != null ? num5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("CropImageOptions(imageSourceIncludeGallery=", ", imageSourceIncludeCamera=", ", cropShape=", this.f25064b, this.f25065c);
        sbM.append(this.d);
        sbM.append(", cornerShape=");
        sbM.append(this.f25066e);
        sbM.append(", cropCornerRadius=");
        sbM.append(this.f25067f);
        sbM.append(", snapRadius=");
        sbM.append(this.g);
        sbM.append(", touchRadius=");
        sbM.append(this.f25068h);
        sbM.append(", guidelines=");
        sbM.append(this.f25069i);
        sbM.append(", scaleType=");
        sbM.append(this.f25070j);
        sbM.append(", showCropOverlay=");
        sbM.append(this.f25071k);
        sbM.append(", showCropLabel=");
        fc.y(sbM, this.l, ", showProgressBar=", this.m, ", progressBarColor=");
        sbM.append(this.n);
        sbM.append(", autoZoomEnabled=");
        sbM.append(this.o);
        sbM.append(", multiTouchEnabled=");
        fc.y(sbM, this.p, ", centerMoveEnabled=", this.q, ", canChangeCropWindow=");
        sbM.append(this.r);
        sbM.append(", maxZoom=");
        sbM.append(this.s);
        sbM.append(", initialCropWindowPaddingRatio=");
        sbM.append(this.t);
        sbM.append(", fixAspectRatio=");
        sbM.append(this.u);
        sbM.append(", aspectRatioX=");
        fc.x(this.v, this.w, ", aspectRatioY=", ", borderLineThickness=", sbM);
        sbM.append(this.x);
        sbM.append(", borderLineColor=");
        sbM.append(this.y);
        sbM.append(", borderCornerThickness=");
        sbM.append(this.z);
        sbM.append(", borderCornerOffset=");
        sbM.append(this.A);
        sbM.append(", borderCornerLength=");
        sbM.append(this.B);
        sbM.append(", borderCornerColor=");
        sbM.append(this.C);
        sbM.append(", circleCornerFillColorHexValue=");
        sbM.append(this.D);
        sbM.append(", guidelinesThickness=");
        sbM.append(this.E);
        sbM.append(", guidelinesColor=");
        fc.x(this.F, this.G, ", backgroundColor=", ", minCropWindowWidth=", sbM);
        fc.x(this.H, this.I, ", minCropWindowHeight=", ", minCropResultWidth=", sbM);
        fc.x(this.J, this.K, ", minCropResultHeight=", ", maxCropResultWidth=", sbM);
        fc.x(this.L, this.M, ", maxCropResultHeight=", ", activityTitle=", sbM);
        sbM.append((Object) this.N);
        sbM.append(", activityMenuIconColor=");
        sbM.append(this.O);
        sbM.append(", activityMenuTextColor=");
        sbM.append(this.P);
        sbM.append(", customOutputUri=");
        sbM.append(this.Q);
        sbM.append(", outputCompressFormat=");
        sbM.append(this.R);
        sbM.append(", outputCompressQuality=");
        sbM.append(this.S);
        sbM.append(", outputRequestWidth=");
        fc.x(this.T, this.V, ", outputRequestHeight=", ", outputRequestSizeOptions=", sbM);
        sbM.append(this.W);
        sbM.append(", noOutputImage=");
        sbM.append(this.X);
        sbM.append(", initialCropWindowRectangle=");
        sbM.append(this.Y);
        sbM.append(", initialRotation=");
        sbM.append(this.Z);
        sbM.append(", allowRotation=");
        fc.y(sbM, this.h0, ", allowFlipping=", this.t0, ", allowCounterRotation=");
        sbM.append(this.b1);
        sbM.append(", rotationDegrees=");
        sbM.append(this.c1);
        sbM.append(", flipHorizontally=");
        fc.y(sbM, this.d1, ", flipVertically=", this.e1, ", cropMenuCropButtonTitle=");
        sbM.append((Object) this.f1);
        sbM.append(", cropMenuCropButtonIcon=");
        sbM.append(this.g1);
        sbM.append(", skipEditing=");
        fc.y(sbM, this.h1, ", showIntentChooser=", this.i1, ", intentChooserTitle=");
        d21.z(this.j1, ", intentChooserPriorityList=", ", cropperLabelTextSize=", sbM, this.k1);
        sbM.append(this.l1);
        sbM.append(", cropperLabelTextColor=");
        sbM.append(this.m1);
        sbM.append(", cropperLabelText=");
        sbM.append(this.n1);
        sbM.append(", activityBackgroundColor=");
        sbM.append(this.o1);
        sbM.append(", toolbarColor=");
        sbM.append(this.p1);
        sbM.append(", toolbarTitleColor=");
        sbM.append(this.q1);
        sbM.append(", toolbarBackButtonColor=");
        sbM.append(this.r1);
        sbM.append(", toolbarTintColor=");
        sbM.append(this.s1);
        sbM.append(")");
        return sbM.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeInt(this.f25064b ? 1 : 0);
        parcel.writeInt(this.f25065c ? 1 : 0);
        parcel.writeString(this.d.name());
        parcel.writeString(this.f25066e.name());
        parcel.writeFloat(this.f25067f);
        parcel.writeFloat(this.g);
        parcel.writeFloat(this.f25068h);
        parcel.writeString(this.f25069i.name());
        parcel.writeString(this.f25070j.name());
        parcel.writeInt(this.f25071k ? 1 : 0);
        parcel.writeInt(this.l ? 1 : 0);
        parcel.writeInt(this.m ? 1 : 0);
        parcel.writeInt(this.n);
        parcel.writeInt(this.o ? 1 : 0);
        parcel.writeInt(this.p ? 1 : 0);
        parcel.writeInt(this.q ? 1 : 0);
        parcel.writeInt(this.r ? 1 : 0);
        parcel.writeInt(this.s);
        parcel.writeFloat(this.t);
        parcel.writeInt(this.u ? 1 : 0);
        parcel.writeInt(this.v);
        parcel.writeInt(this.w);
        parcel.writeFloat(this.x);
        parcel.writeInt(this.y);
        parcel.writeFloat(this.z);
        parcel.writeFloat(this.A);
        parcel.writeFloat(this.B);
        parcel.writeInt(this.C);
        parcel.writeInt(this.D);
        parcel.writeFloat(this.E);
        parcel.writeInt(this.F);
        parcel.writeInt(this.G);
        parcel.writeInt(this.H);
        parcel.writeInt(this.I);
        parcel.writeInt(this.J);
        parcel.writeInt(this.K);
        parcel.writeInt(this.L);
        parcel.writeInt(this.M);
        TextUtils.writeToParcel(this.N, parcel, i2);
        parcel.writeInt(this.O);
        Integer num = this.P;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        parcel.writeParcelable(this.Q, i2);
        parcel.writeString(this.R.name());
        parcel.writeInt(this.S);
        parcel.writeInt(this.T);
        parcel.writeInt(this.V);
        parcel.writeString(this.W.name());
        parcel.writeInt(this.X ? 1 : 0);
        parcel.writeParcelable(this.Y, i2);
        parcel.writeInt(this.Z);
        parcel.writeInt(this.h0 ? 1 : 0);
        parcel.writeInt(this.t0 ? 1 : 0);
        parcel.writeInt(this.b1 ? 1 : 0);
        parcel.writeInt(this.c1);
        parcel.writeInt(this.d1 ? 1 : 0);
        parcel.writeInt(this.e1 ? 1 : 0);
        TextUtils.writeToParcel(this.f1, parcel, i2);
        parcel.writeInt(this.g1);
        parcel.writeInt(this.h1 ? 1 : 0);
        parcel.writeInt(this.i1 ? 1 : 0);
        parcel.writeString(this.j1);
        parcel.writeStringList(this.k1);
        parcel.writeFloat(this.l1);
        parcel.writeInt(this.m1);
        parcel.writeString(this.n1);
        parcel.writeInt(this.o1);
        Integer num2 = this.p1;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        Integer num3 = this.q1;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num3.intValue());
        }
        Integer num4 = this.r1;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num4.intValue());
        }
        Integer num5 = this.s1;
        if (num5 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num5.intValue());
        }
    }

    public CropImageOptions(boolean z) {
        this(z, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -2, -1, 63, null);
    }

    public CropImageOptions(boolean z, boolean z2) {
        this(z, z2, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -4, -1, 63, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape) {
        this(z, z2, cropShape, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -8, -1, 63, null);
        cropShape.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape) {
        this(z, z2, cropShape, cropCornerShape, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -16, -1, 63, null);
        cropShape.getClass();
        cropCornerShape.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2) {
        this(z, z2, cropShape, cropCornerShape, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -32, -1, 63, null);
        cropShape.getClass();
        cropCornerShape.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -64, -1, 63, null);
        cropShape.getClass();
        cropCornerShape.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -128, -1, 63, null);
        cropShape.getClass();
        cropCornerShape.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -256, -1, 63, null);
        cropShape.getClass();
        cropCornerShape.getClass();
        guidelines.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -512, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1024, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -2048, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -4096, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -8192, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -16384, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -32768, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -65536, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -131072, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -262144, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -524288, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1048576, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -2097152, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -4194304, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -8388608, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, b.v, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -33554432, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -67108864, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -134217728, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -268435456, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -536870912, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1073741824, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, Integer.MIN_VALUE, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -1, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -2, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -4, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -8, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -16, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -32, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -64, 63, null);
        cj.v(cropShape, cropCornerShape, guidelines, scaleType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -128, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -256, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -512, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -1024, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -2048, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -4096, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -8192, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -16384, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -32768, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -65536, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -131072, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -262144, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -524288, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -1048576, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -2097152, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -4194304, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -8388608, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, b.v, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -33554432, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -67108864, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -134217728, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -268435456, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, str, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -536870912, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List<String> list) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, str, list, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, 0, -1073741824, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List<String> list, float f11) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, str, list, f11, 0, null, 0, null, null, null, null, 0, Integer.MIN_VALUE, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List<String> list, float f11, int i24) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, str, list, f11, i24, null, 0, null, null, null, null, 0, 0, 63, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List<String> list, float f11, int i24, String str2) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, str, list, f11, i24, str2, 0, null, null, null, null, 0, 0, 62, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List<String> list, float f11, int i24, String str2, int i25) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, str, list, f11, i24, str2, i25, null, null, null, null, 0, 0, 60, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List<String> list, float f11, int i24, String str2, int i25, Integer num2) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, str, list, f11, i24, str2, i25, num2, null, null, null, 0, 0, 56, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List<String> list, float f11, int i24, String str2, int i25, Integer num2, Integer num3) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, str, list, f11, i24, str2, i25, num2, num3, null, null, 0, 0, 48, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List<String> list, float f11, int i24, String str2, int i25, Integer num2, Integer num3, Integer num4) {
        this(z, z2, cropShape, cropCornerShape, f2, f3, f4, guidelines, scaleType, z3, z4, z5, i2, z6, z7, z8, z9, i3, f5, z10, i4, i5, f6, i6, f7, f8, f9, i7, i8, f10, i9, i10, i11, i12, i13, i14, i15, i16, charSequence, i17, num, uri, compressFormat, i18, i19, i20, requestSizeOptions, z11, rect, i21, z12, z13, z14, i22, z15, z16, charSequence2, i23, z17, z18, str, list, f11, i24, str2, i25, num2, num3, num4, null, 0, 0, 32, null);
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
    }

    public CropImageOptions(boolean z, boolean z2, CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, float f2, float f3, float f4, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, int i2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, float f5, boolean z10, int i4, int i5, float f6, int i6, float f7, float f8, float f9, int i7, int i8, float f10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, CharSequence charSequence, int i17, Integer num, Uri uri, Bitmap.CompressFormat compressFormat, int i18, int i19, int i20, CropImageView.RequestSizeOptions requestSizeOptions, boolean z11, Rect rect, int i21, boolean z12, boolean z13, boolean z14, int i22, boolean z15, boolean z16, CharSequence charSequence2, int i23, boolean z17, boolean z18, String str, List<String> list, float f11, int i24, String str2, int i25, Integer num2, Integer num3, Integer num4, Integer num5) {
        cj.w(cropShape, cropCornerShape, guidelines, scaleType, charSequence);
        compressFormat.getClass();
        requestSizeOptions.getClass();
        this.f25064b = z;
        this.f25065c = z2;
        this.d = cropShape;
        this.f25066e = cropCornerShape;
        this.f25067f = f2;
        this.g = f3;
        this.f25068h = f4;
        this.f25069i = guidelines;
        this.f25070j = scaleType;
        this.f25071k = z3;
        this.l = z4;
        this.m = z5;
        this.n = i2;
        this.o = z6;
        this.p = z7;
        this.q = z8;
        this.r = z9;
        this.s = i3;
        this.t = f5;
        this.u = z10;
        this.v = i4;
        this.w = i5;
        this.x = f6;
        this.y = i6;
        this.z = f7;
        this.A = f8;
        this.B = f9;
        this.C = i7;
        this.D = i8;
        this.E = f10;
        this.F = i9;
        this.G = i10;
        this.H = i11;
        this.I = i12;
        this.J = i13;
        this.K = i14;
        this.L = i15;
        this.M = i16;
        this.N = charSequence;
        this.O = i17;
        this.P = num;
        this.Q = uri;
        this.R = compressFormat;
        this.S = i18;
        this.T = i19;
        this.V = i20;
        this.W = requestSizeOptions;
        this.X = z11;
        this.Y = rect;
        this.Z = i21;
        this.h0 = z12;
        this.t0 = z13;
        this.b1 = z14;
        this.c1 = i22;
        this.d1 = z15;
        this.e1 = z16;
        this.f1 = charSequence2;
        this.g1 = i23;
        this.h1 = z17;
        this.i1 = z18;
        this.j1 = str;
        this.k1 = list;
        this.l1 = f11;
        this.m1 = i24;
        this.n1 = str2;
        this.o1 = i25;
        this.p1 = num2;
        this.q1 = num3;
        this.r1 = num4;
        this.s1 = num5;
        if (i3 < 0) {
            md.n("Cannot set max zoom to a number < 1");
            throw null;
        }
        if (f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            md.n("Cannot set touch radius value to a number <= 0 ");
            throw null;
        }
        if (f5 < Call.Parameters.DEFAULT_CAMERA_ZOOM || f5 >= 0.5d) {
            md.n("Cannot set initial crop window padding value to a number < 0 or >= 0.5");
            throw null;
        }
        if (i4 <= 0) {
            md.n("Cannot set aspect ratio value to a number less than or equal to 0.");
            throw null;
        }
        if (i5 <= 0) {
            md.n("Cannot set aspect ratio value to a number less than or equal to 0.");
            throw null;
        }
        if (f6 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            md.n("Cannot set line thickness value to a number less than 0.");
            throw null;
        }
        if (f7 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            md.n("Cannot set corner thickness value to a number less than 0.");
            throw null;
        }
        if (f10 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            md.n("Cannot set guidelines thickness value to a number less than 0.");
            throw null;
        }
        if (i12 < 0) {
            md.n("Cannot set min crop window height value to a number < 0 ");
            throw null;
        }
        if (i13 < 0) {
            md.n("Cannot set min crop result width value to a number < 0 ");
            throw null;
        }
        if (i14 < 0) {
            md.n("Cannot set min crop result height value to a number < 0 ");
            throw null;
        }
        if (i15 < i13) {
            md.n("Cannot set max crop result width to smaller value than min crop result width");
            throw null;
        }
        if (i16 < i14) {
            md.n("Cannot set max crop result height to smaller value than min crop result height");
            throw null;
        }
        if (i19 < 0) {
            md.n("Cannot set request width value to a number < 0 ");
            throw null;
        }
        if (i20 < 0) {
            md.n("Cannot set request height value to a number < 0 ");
            throw null;
        }
        if (i22 < 0 || i22 > 360) {
            md.n("Cannot set rotation degrees value to a number < 0 or > 360");
            throw null;
        }
    }

    public CropImageOptions() {
        this(false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1, -1, 63, null);
    }
}
