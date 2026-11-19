package androidx.core.app;

import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.graphics.Rect;
import android.os.Build;
import android.util.Rational;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0013\u0014Bs\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Landroidx/core/app/PictureInPictureParamsCompat;", "", "", "isEnabled", "Landroid/util/Rational;", "aspectRatio", "", "Landroid/app/RemoteAction;", "actions", "Landroid/graphics/Rect;", "sourceRectHint", "isSeamlessResizeEnabled", "closeAction", "expandedAspectRatio", "", "title", "subTitle", "<init>", "(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V", "Api31Impl", "Api33Impl", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PictureInPictureParamsCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f11979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rational f11980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f11981c;
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f11982e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RemoteAction f11983f;
    public final Rational g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CharSequence f11984h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CharSequence f11985i;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/core/app/PictureInPictureParamsCompat$Api31Impl;", "", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api31Impl {
        public static final PictureInPictureParams a(Rational rational, List list, Rect rect, boolean z, boolean z2) {
            list.getClass();
            PictureInPictureParams pictureInPictureParamsBuild = new PictureInPictureParams.Builder().setAspectRatio(rational).setActions(list).setSourceRectHint(rect).setAutoEnterEnabled(z).setSeamlessResizeEnabled(z2).build();
            pictureInPictureParamsBuild.getClass();
            return pictureInPictureParamsBuild;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/core/app/PictureInPictureParamsCompat$Api33Impl;", "", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api33Impl {
        public static final PictureInPictureParams a(boolean z, Rational rational, List list, Rect rect, boolean z2, RemoteAction remoteAction, Rational rational2, CharSequence charSequence, CharSequence charSequence2) {
            list.getClass();
            PictureInPictureParams pictureInPictureParamsBuild = new PictureInPictureParams.Builder().setAspectRatio(rational).setActions(list).setSourceRectHint(rect).setAutoEnterEnabled(z).setSeamlessResizeEnabled(z2).setExpandedAspectRatio(rational2).setCloseAction(remoteAction).setTitle(charSequence).setSubtitle(charSequence2).build();
            pictureInPictureParamsBuild.getClass();
            return pictureInPictureParamsBuild;
        }
    }

    public PictureInPictureParamsCompat(boolean z, Rational rational, List list, Rect rect, boolean z2, RemoteAction remoteAction, Rational rational2, CharSequence charSequence, CharSequence charSequence2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? null : rational, (i2 & 4) != 0 ? EmptyList.f71768b : list, (i2 & 8) != 0 ? null : rect, (i2 & 16) != 0 ? false : z2, (i2 & 32) != 0 ? null : remoteAction, (i2 & 64) != 0 ? null : rational2, (i2 & 128) != 0 ? null : charSequence, (i2 & 256) != 0 ? null : charSequence2);
    }

    public final PictureInPictureParams a() {
        int i2 = Build.VERSION.SDK_INT;
        Rect rect = this.d;
        List<RemoteAction> list = this.f11981c;
        Rational rational = this.f11980b;
        if (i2 >= 33) {
            return Api33Impl.a(this.f11979a, rational, list, rect, this.f11982e, this.f11983f, this.g, this.f11984h, this.f11985i);
        }
        if (i2 >= 31) {
            return Api31Impl.a(rational, list, rect, this.f11979a, this.f11982e);
        }
        list.getClass();
        PictureInPictureParams pictureInPictureParamsBuild = new PictureInPictureParams.Builder().setAspectRatio(rational).setActions(list).setSourceRectHint(rect).build();
        pictureInPictureParamsBuild.getClass();
        return pictureInPictureParamsBuild;
    }

    public PictureInPictureParamsCompat(boolean z, Rational rational, List<RemoteAction> list, Rect rect, boolean z2, RemoteAction remoteAction, Rational rational2, CharSequence charSequence, CharSequence charSequence2) {
        list.getClass();
        this.f11979a = z;
        this.f11980b = rational;
        this.f11981c = list;
        this.d = rect;
        this.f11982e = z2;
        this.f11983f = remoteAction;
        this.g = rational2;
        this.f11984h = charSequence;
        this.f11985i = charSequence2;
    }

    public PictureInPictureParamsCompat() {
        this(false, null, null, null, false, null, null, null, null, 511, null);
    }
}
