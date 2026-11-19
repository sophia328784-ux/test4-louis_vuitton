package androidx.compose.ui.text.input;

import androidx.compose.ui.text.intl.LocaleList;
import defpackage.o60;
import defpackage.tr;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0013BO\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010BG\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000f\u0010\u0011B;\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0012¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/text/input/ImeOptions;", "", "", "singleLine", "Landroidx/compose/ui/text/input/KeyboardCapitalization;", "capitalization", "autoCorrect", "Landroidx/compose/ui/text/input/KeyboardType;", "keyboardType", "Landroidx/compose/ui/text/input/ImeAction;", "imeAction", "Landroidx/compose/ui/text/input/PlatformImeOptions;", "platformImeOptions", "Landroidx/compose/ui/text/intl/LocaleList;", "hintLocales", "<init>", "(ZIZIILandroidx/compose/ui/text/input/PlatformImeOptions;Landroidx/compose/ui/text/intl/LocaleList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(ZIZIILandroidx/compose/ui/text/input/PlatformImeOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImeOptions {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f10793h = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ImeOptions f10794i = new ImeOptions(false, 0, false, 0, 0, null, null, CertificateBody.profileType, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f10795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f10797c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10798e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PlatformImeOptions f10799f;
    public final LocaleList g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/input/ImeOptions$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ImeOptions(boolean z, int i2, boolean z2, int i3, int i4, PlatformImeOptions platformImeOptions, LocaleList localeList, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        z = (i5 & 1) != 0 ? false : z;
        if ((i5 & 2) != 0) {
            KeyboardCapitalization.f10804b.getClass();
            i2 = 0;
        }
        z2 = (i5 & 4) != 0 ? true : z2;
        if ((i5 & 8) != 0) {
            KeyboardType.f10809b.getClass();
            i3 = KeyboardType.f10810c;
        }
        if ((i5 & 16) != 0) {
            ImeAction.f10785b.getClass();
            i4 = ImeAction.d;
        }
        platformImeOptions = (i5 & 32) != 0 ? null : platformImeOptions;
        if ((i5 & 64) != 0) {
            LocaleList.d.getClass();
            localeList = LocaleList.f10872e;
        }
        this(z, i2, z2, i3, i4, platformImeOptions, localeList, (DefaultConstructorMarker) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImeOptions)) {
            return false;
        }
        ImeOptions imeOptions = (ImeOptions) obj;
        if (this.f10795a != imeOptions.f10795a) {
            return false;
        }
        int i2 = imeOptions.f10796b;
        KeyboardCapitalization.Companion companion = KeyboardCapitalization.f10804b;
        if (this.f10796b != i2 || this.f10797c != imeOptions.f10797c) {
            return false;
        }
        int i3 = imeOptions.d;
        KeyboardType.Companion companion2 = KeyboardType.f10809b;
        if (this.d == i3) {
            int i4 = imeOptions.f10798e;
            ImeAction.Companion companion3 = ImeAction.f10785b;
            return this.f10798e == i4 && Intrinsics.c(this.f10799f, imeOptions.f10799f) && Intrinsics.c(this.g, imeOptions.g);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f10795a) * 31;
        KeyboardCapitalization.Companion companion = KeyboardCapitalization.f10804b;
        int iB = o60.b(tr.b(this.f10796b, iHashCode, 31), 31, this.f10797c);
        KeyboardType.Companion companion2 = KeyboardType.f10809b;
        int iB2 = tr.b(this.d, iB, 31);
        ImeAction.Companion companion3 = ImeAction.f10785b;
        int iB3 = tr.b(this.f10798e, iB2, 31);
        PlatformImeOptions platformImeOptions = this.f10799f;
        return this.g.f10873b.hashCode() + ((iB3 + (platformImeOptions != null ? platformImeOptions.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "ImeOptions(singleLine=" + this.f10795a + ", capitalization=" + ((Object) KeyboardCapitalization.a(this.f10796b)) + ", autoCorrect=" + this.f10797c + ", keyboardType=" + ((Object) KeyboardType.a(this.d)) + ", imeAction=" + ((Object) ImeAction.a(this.f10798e)) + ", platformImeOptions=" + this.f10799f + ", hintLocales=" + this.g + ')';
    }

    public ImeOptions(boolean z, int i2, boolean z2, int i3, int i4, PlatformImeOptions platformImeOptions, LocaleList localeList, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10795a = z;
        this.f10796b = i2;
        this.f10797c = z2;
        this.d = i3;
        this.f10798e = i4;
        this.f10799f = platformImeOptions;
        this.g = localeList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ImeOptions(boolean z, int i2, boolean z2, int i3, int i4, PlatformImeOptions platformImeOptions, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        z = (i5 & 1) != 0 ? false : z;
        if ((i5 & 2) != 0) {
            KeyboardCapitalization.f10804b.getClass();
            i2 = 0;
        }
        z2 = (i5 & 4) != 0 ? true : z2;
        if ((i5 & 8) != 0) {
            KeyboardType.f10809b.getClass();
            i3 = KeyboardType.f10810c;
        }
        if ((i5 & 16) != 0) {
            ImeAction.f10785b.getClass();
            i4 = ImeAction.d;
        }
        this(z, i2, z2, i3, i4, (i5 & 32) != 0 ? null : platformImeOptions, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public ImeOptions(boolean z, int i2, boolean z2, int i3, int i4, PlatformImeOptions platformImeOptions, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, i2, z2, i3, i4, platformImeOptions, LocaleList.f10872e, (DefaultConstructorMarker) null);
        LocaleList.d.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ImeOptions(boolean z, int i2, boolean z2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        z = (i5 & 1) != 0 ? false : z;
        if ((i5 & 2) != 0) {
            KeyboardCapitalization.f10804b.getClass();
            i2 = 0;
        }
        z2 = (i5 & 4) != 0 ? true : z2;
        if ((i5 & 8) != 0) {
            KeyboardType.f10809b.getClass();
            i3 = KeyboardType.f10810c;
        }
        if ((i5 & 16) != 0) {
            ImeAction.f10785b.getClass();
            i4 = ImeAction.d;
        }
        this(z, i2, z2, i3, i4, null);
    }

    @Deprecated
    public ImeOptions(boolean z, int i2, boolean z2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, i2, z2, i3, i4, null, null, 64, null);
    }
}
