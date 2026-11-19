package com.vuitton.android.presentation.utils;

import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import defpackage.v40;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/utils/UrlFactory;", "", "Lkotlin/Function0;", "", "getMaxImageWidthInPixel", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UrlFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f65880b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f65881a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/utils/UrlFactory$Companion;", "", "", "QUERY_PARAM_WIDTH", "Ljava/lang/String;", "QUERY_PARAM_HEIGHT", "QUERY_IM_POLICY", "QUERY_BG_COLOR", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public UrlFactory(Function0<Integer> function0) {
        function0.getClass();
        this.f65881a = ((Number) function0.mo47invoke()).intValue();
    }

    public static String a(String str, ImageConfiguration imageConfiguration) {
        HttpUrl httpUrlC;
        str.getClass();
        ImageConfiguration.Background background = imageConfiguration.f65851b;
        ImageConfiguration.Background.Transparent transparent = ImageConfiguration.Background.Transparent.f65853a;
        String strJ = Intrinsics.c(background, transparent) ? StringsKt.J(str, ".jpg", ".png") : str;
        HttpUrl.f76918j.getClass();
        try {
            httpUrlC = HttpUrl.Companion.c(strJ);
        } catch (IllegalArgumentException unused) {
            httpUrlC = null;
        }
        if (httpUrlC == null) {
            return str;
        }
        HttpUrl.Builder builderG = httpUrlC.g();
        builderG.f("wid");
        builderG.f("hei");
        if (!Intrinsics.c(background, transparent) && background != null) {
            if (!(background instanceof ImageConfiguration.Background.Opaque)) {
                v40.g();
                return null;
            }
            builderG.b("impolicy", "bgcolor");
            builderG.b("bgcolor", ((ImageConfiguration.Background.Opaque) background).f65852a);
        }
        ImageConfiguration.Size size = imageConfiguration.f65850a;
        if (size != null) {
            Set set = size.f65856b;
            String strValueOf = String.valueOf(size.f65855a.b());
            if (set.contains(ImageConfiguration.Size.DimensionConstraint.Width)) {
                builderG.b("wid", strValueOf);
            }
            if (set.contains(ImageConfiguration.Size.DimensionConstraint.Height)) {
                builderG.b("hei", strValueOf);
            }
        }
        return StringsKt.a0(builderG.toString()).toString();
    }

    public static String d(String str, int i2, ImageConfiguration.Background background) {
        str.getClass();
        ImageConfiguration.Size.Companion companion = ImageConfiguration.Size.f65854c;
        ImageConfiguration.Size.Container container = new ImageConfiguration.Size.Container(ResourcesExtKt.a(i2), ResourcesExtKt.a(i2));
        Set setZ = ArraysKt.Z(new ImageConfiguration.Size.DimensionConstraint[]{ImageConfiguration.Size.DimensionConstraint.Width, ImageConfiguration.Size.DimensionConstraint.Height});
        companion.getClass();
        return a(str, new ImageConfiguration(ImageConfiguration.Size.Companion.a(container, setZ), background));
    }

    public final String b(String str, ImageConfiguration.Background background) {
        str.getClass();
        ImageConfiguration.Size.Companion companion = ImageConfiguration.Size.f65854c;
        ImageConfiguration.Size.Container container = new ImageConfiguration.Size.Container(this.f65881a, 0, 2, null);
        Set setH = SetsKt.h(ImageConfiguration.Size.DimensionConstraint.Width);
        companion.getClass();
        return a(str, new ImageConfiguration(ImageConfiguration.Size.Companion.a(container, setH), background));
    }

    public final String c(String str) {
        str.getClass();
        ImageConfiguration.Size.Companion companion = ImageConfiguration.Size.f65854c;
        int i2 = this.f65881a / 2;
        ImageConfiguration.Size.Container container = new ImageConfiguration.Size.Container(i2, i2);
        Set setZ = ArraysKt.Z(new ImageConfiguration.Size.DimensionConstraint[]{ImageConfiguration.Size.DimensionConstraint.Width, ImageConfiguration.Size.DimensionConstraint.Height});
        companion.getClass();
        return a(str, new ImageConfiguration(ImageConfiguration.Size.Companion.a(container, setZ), ImageConfiguration.Background.Transparent.f65853a));
    }
}
