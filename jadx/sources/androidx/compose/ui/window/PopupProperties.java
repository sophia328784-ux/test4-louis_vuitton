package androidx.compose.ui.window;

import android.os.IBinder;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import defpackage.o60;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eB;\b\u0016\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u0011BO\b\u0017\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u0014BC\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u0015B1\b\u0017\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u0016BE\b\u0016\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u0017Be\b\u0016\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u0018¨\u0006\u0019"}, d2 = {"Landroidx/compose/ui/window/PopupProperties;", "", "", "flags", "", "inheritSecurePolicy", "dismissOnBackPress", "dismissOnClickOutside", "excludeFromSystemGesture", "usePlatformDefaultWidth", "windowType", "Landroid/os/IBinder;", "windowToken", "<init>", "(IZZZZZILandroid/os/IBinder;)V", "focusable", "clippingEnabled", "(ZZZZZ)V", "Landroidx/compose/ui/window/SecureFlagPolicy;", "securePolicy", "(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZ)V", "(IZZZZZ)V", "(ZZZZ)V", "(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V", "(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZILandroid/os/IBinder;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PopupProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f11184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f11185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f11186c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f11187e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f11188f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final IBinder f11189h;

    public /* synthetic */ PopupProperties(boolean z, boolean z2, boolean z3, SecureFlagPolicy secureFlagPolicy, boolean z4, boolean z5, boolean z6, int i2, IBinder iBinder, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? true : z2, (i3 & 4) != 0 ? true : z3, (i3 & 8) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i3 & 16) != 0 ? true : z4, (i3 & 32) != 0 ? true : z5, (i3 & 64) != 0 ? false : z6, (i3 & 128) != 0 ? 1002 : i2, (i3 & 256) != 0 ? null : iBinder);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PopupProperties)) {
            return false;
        }
        PopupProperties popupProperties = (PopupProperties) obj;
        return this.f11184a == popupProperties.f11184a && this.f11185b == popupProperties.f11185b && this.f11186c == popupProperties.f11186c && this.d == popupProperties.d && this.f11187e == popupProperties.f11187e && this.f11188f == popupProperties.f11188f && this.g == popupProperties.g && Intrinsics.c(this.f11189h, popupProperties.f11189h);
    }

    public final int hashCode() {
        int iB = (o60.b(o60.b(o60.b(o60.b(o60.b(this.f11184a * 31, 31, this.f11185b), 31, this.f11186c), 31, this.d), 31, this.f11187e), 31, this.f11188f) + this.g) * 31;
        IBinder iBinder = this.f11189h;
        return iB + (iBinder != null ? iBinder.hashCode() : 0);
    }

    public /* synthetic */ PopupProperties(int i2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i3, IBinder iBinder, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i4 & 2) != 0 ? true : z, (i4 & 4) != 0 ? true : z2, (i4 & 8) != 0 ? true : z3, (i4 & 16) != 0 ? true : z4, (i4 & 32) != 0 ? false : z5, (i4 & 64) != 0 ? 1002 : i3, (i4 & 128) != 0 ? null : iBinder);
    }

    public /* synthetic */ PopupProperties(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? true : z2, (i2 & 4) != 0 ? true : z3, (i2 & 8) != 0 ? true : z4, (i2 & 16) != 0 ? false : z5);
    }

    public PopupProperties(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this(z, z2, z3, SecureFlagPolicy.Inherit, true, z4, z5, 1002, (IBinder) null);
    }

    public /* synthetic */ PopupProperties(boolean z, boolean z2, boolean z3, SecureFlagPolicy secureFlagPolicy, boolean z4, boolean z5, boolean z6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? true : z2, (i2 & 4) != 0 ? true : z3, (i2 & 8) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i2 & 16) != 0 ? true : z4, (i2 & 32) != 0 ? true : z5, (i2 & 64) != 0 ? false : z6);
    }

    @Deprecated
    public /* synthetic */ PopupProperties(boolean z, boolean z2, boolean z3, SecureFlagPolicy secureFlagPolicy, boolean z4, boolean z5, boolean z6) {
        this(z, z2, z3, secureFlagPolicy, z4, z5, z6, 1002, (IBinder) null);
    }

    public /* synthetic */ PopupProperties(int i2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? true : z, (i3 & 4) != 0 ? true : z2, (i3 & 8) != 0 ? true : z3, (i3 & 16) != 0 ? true : z4, (i3 & 32) != 0 ? false : z5);
    }

    @Deprecated
    public /* synthetic */ PopupProperties(int i2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this(i2, z, z2, z3, z4, z5, 1002, (IBinder) null);
    }

    public /* synthetic */ PopupProperties(boolean z, boolean z2, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? true : z2, (i2 & 4) != 0 ? true : z3, (i2 & 8) != 0 ? true : z4);
    }

    @Deprecated
    public /* synthetic */ PopupProperties(boolean z, boolean z2, boolean z3, boolean z4) {
        this(z, z2, z3, SecureFlagPolicy.Inherit, true, z4);
    }

    public /* synthetic */ PopupProperties(boolean z, boolean z2, boolean z3, SecureFlagPolicy secureFlagPolicy, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? true : z2, (i2 & 4) != 0 ? true : z3, (i2 & 8) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i2 & 16) != 0 ? true : z4, (i2 & 32) != 0 ? true : z5);
    }

    public PopupProperties(boolean z, boolean z2, boolean z3, SecureFlagPolicy secureFlagPolicy, boolean z4, boolean z5) {
        this(z, z2, z3, secureFlagPolicy, z4, z5, false, 0, null, KyberEngine.KyberPolyBytes, null);
    }

    public PopupProperties(int i2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i3, IBinder iBinder) {
        this.f11184a = i2;
        this.f11185b = z;
        this.f11186c = z2;
        this.d = z3;
        this.f11187e = z4;
        this.f11188f = z5;
        this.g = i3;
        this.f11189h = iBinder;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PopupProperties(boolean z, boolean z2, boolean z3, SecureFlagPolicy secureFlagPolicy, boolean z4, boolean z5, boolean z6, int i2, IBinder iBinder) {
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.f11122a;
        int i3 = !z ? 262152 : 262144;
        i3 = secureFlagPolicy == SecureFlagPolicy.SecureOn ? i3 | 8192 : i3;
        this(z5 ? i3 : i3 | 512, secureFlagPolicy == SecureFlagPolicy.Inherit, z2, z3, z4, z6, i2, iBinder);
    }
}
