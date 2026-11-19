package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import defpackage.tr;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0015BU\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010BS\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0012B1\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u0013B=\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000f\u0010\u0014¨\u0006\u0016"}, d2 = {"Landroidx/compose/foundation/text/KeyboardOptions;", "", "Landroidx/compose/ui/text/input/KeyboardCapitalization;", "capitalization", "", "autoCorrectEnabled", "Landroidx/compose/ui/text/input/KeyboardType;", "keyboardType", "Landroidx/compose/ui/text/input/ImeAction;", "imeAction", "Landroidx/compose/ui/text/input/PlatformImeOptions;", "platformImeOptions", "showKeyboardOnFocus", "Landroidx/compose/ui/text/intl/LocaleList;", "hintLocales", "<init>", "(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "autoCorrect", "(IZIILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "(IZIILandroidx/compose/ui/text/input/PlatformImeOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class KeyboardOptions {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f5918h = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final KeyboardOptions f5919i = new KeyboardOptions(0, (Boolean) null, 0, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, CertificateBody.profileType, (DefaultConstructorMarker) null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f5921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5922c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PlatformImeOptions f5923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f5924f;
    public final LocaleList g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/KeyboardOptions$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        Boolean bool = Boolean.FALSE;
        KeyboardType.f10809b.getClass();
        new KeyboardOptions(0, bool, KeyboardType.f10814i, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 121, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KeyboardOptions(int i2, Boolean bool, int i3, int i4, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        int i6;
        int i7;
        int i8;
        if ((i5 & 1) != 0) {
            KeyboardCapitalization.f10804b.getClass();
            i6 = KeyboardCapitalization.f10805c;
        } else {
            i6 = i2;
        }
        Boolean bool3 = (i5 & 2) != 0 ? null : bool;
        if ((i5 & 4) != 0) {
            KeyboardType.f10809b.getClass();
            i7 = 0;
        } else {
            i7 = i3;
        }
        if ((i5 & 8) != 0) {
            ImeAction.f10785b.getClass();
            i8 = ImeAction.f10786c;
        } else {
            i8 = i4;
        }
        this(i6, bool3, i7, i8, (i5 & 16) != 0 ? null : platformImeOptions, (i5 & 32) != 0 ? null : bool2, (i5 & 64) == 0 ? localeList : null, (DefaultConstructorMarker) null);
    }

    public static KeyboardOptions a(KeyboardOptions keyboardOptions, int i2, int i3, int i4) {
        int i5 = keyboardOptions.f5920a;
        Boolean bool = keyboardOptions.f5921b;
        if ((i4 & 4) != 0) {
            i2 = keyboardOptions.f5922c;
        }
        PlatformImeOptions platformImeOptions = keyboardOptions.f5923e;
        keyboardOptions.getClass();
        return new KeyboardOptions(i5, bool, i2, i3, platformImeOptions, (Boolean) null, (LocaleList) null, (DefaultConstructorMarker) null);
    }

    public final ImeOptions b(boolean z) {
        int i2 = this.f5920a;
        KeyboardCapitalization keyboardCapitalization = new KeyboardCapitalization(i2);
        KeyboardCapitalization.f10804b.getClass();
        if (i2 == KeyboardCapitalization.f10805c) {
            keyboardCapitalization = null;
        }
        int i3 = keyboardCapitalization != null ? keyboardCapitalization.f10808a : 0;
        Boolean bool = this.f5921b;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : true;
        int i4 = this.f5922c;
        KeyboardType keyboardType = new KeyboardType(i4);
        KeyboardType.f10809b.getClass();
        if (i4 == 0) {
            keyboardType = null;
        }
        int i5 = keyboardType != null ? keyboardType.f10817a : KeyboardType.f10810c;
        int i6 = this.d;
        ImeAction imeAction = new ImeAction(i6);
        ImeAction.f10785b.getClass();
        ImeAction imeAction2 = i6 != ImeAction.f10786c ? imeAction : null;
        int i7 = imeAction2 != null ? imeAction2.f10792a : ImeAction.d;
        LocaleList localeList = this.g;
        if (localeList == null) {
            LocaleList.d.getClass();
            localeList = LocaleList.f10872e;
        }
        return new ImeOptions(z, i3, zBooleanValue, i5, i7, this.f5923e, localeList, (DefaultConstructorMarker) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyboardOptions)) {
            return false;
        }
        KeyboardOptions keyboardOptions = (KeyboardOptions) obj;
        int i2 = keyboardOptions.f5920a;
        KeyboardCapitalization.Companion companion = KeyboardCapitalization.f10804b;
        if (this.f5920a != i2 || !Intrinsics.c(this.f5921b, keyboardOptions.f5921b)) {
            return false;
        }
        int i3 = keyboardOptions.f5922c;
        KeyboardType.Companion companion2 = KeyboardType.f10809b;
        if (this.f5922c == i3) {
            int i4 = keyboardOptions.d;
            ImeAction.Companion companion3 = ImeAction.f10785b;
            return this.d == i4 && Intrinsics.c(this.f5923e, keyboardOptions.f5923e) && Intrinsics.c(this.f5924f, keyboardOptions.f5924f) && Intrinsics.c(this.g, keyboardOptions.g);
        }
        return false;
    }

    public final int hashCode() {
        KeyboardCapitalization.Companion companion = KeyboardCapitalization.f10804b;
        int iHashCode = Integer.hashCode(this.f5920a) * 31;
        Boolean bool = this.f5921b;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 31;
        KeyboardType.Companion companion2 = KeyboardType.f10809b;
        int iB = tr.b(this.f5922c, iHashCode2, 31);
        ImeAction.Companion companion3 = ImeAction.f10785b;
        int iB2 = tr.b(this.d, iB, 31);
        PlatformImeOptions platformImeOptions = this.f5923e;
        int iHashCode3 = (iB2 + (platformImeOptions != null ? platformImeOptions.hashCode() : 0)) * 31;
        Boolean bool2 = this.f5924f;
        int iHashCode4 = (iHashCode3 + (bool2 != null ? bool2.hashCode() : 0)) * 31;
        LocaleList localeList = this.g;
        return iHashCode4 + (localeList != null ? localeList.f10873b.hashCode() : 0);
    }

    public final String toString() {
        return "KeyboardOptions(capitalization=" + ((Object) KeyboardCapitalization.a(this.f5920a)) + ", autoCorrectEnabled=" + this.f5921b + ", keyboardType=" + ((Object) KeyboardType.a(this.f5922c)) + ", imeAction=" + ((Object) ImeAction.a(this.d)) + ", platformImeOptions=" + this.f5923e + "showKeyboardOnFocus=" + this.f5924f + ", hintLocales=" + this.g + ')';
    }

    public KeyboardOptions(int i2, Boolean bool, int i3, int i4, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5920a = i2;
        this.f5921b = bool;
        this.f5922c = i3;
        this.d = i4;
        this.f5923e = platformImeOptions;
        this.f5924f = bool2;
        this.g = localeList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KeyboardOptions(int i2, boolean z, int i3, int i4, PlatformImeOptions platformImeOptions, Boolean bool, LocaleList localeList, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i5 & 1) != 0) {
            KeyboardCapitalization.f10804b.getClass();
            i2 = KeyboardCapitalization.f10805c;
        }
        int i6 = i2;
        if ((i5 & 4) != 0) {
            KeyboardType.f10809b.getClass();
            i3 = 0;
        }
        int i7 = i3;
        if ((i5 & 8) != 0) {
            ImeAction.f10785b.getClass();
            i4 = ImeAction.f10786c;
        }
        this(i6, z, i7, i4, (i5 & 16) != 0 ? null : platformImeOptions, (i5 & 32) != 0 ? null : bool, (i5 & 64) != 0 ? null : localeList, (DefaultConstructorMarker) null);
    }

    @Deprecated
    public KeyboardOptions(int i2, boolean z, int i3, int i4, PlatformImeOptions platformImeOptions, Boolean bool, LocaleList localeList, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, Boolean.valueOf(z), i3, i4, platformImeOptions, bool, localeList, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KeyboardOptions(int i2, boolean z, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i5 & 1) != 0) {
            KeyboardCapitalization.f10804b.getClass();
            i2 = KeyboardCapitalization.f10805c;
        }
        int i6 = i2;
        if ((i5 & 2) != 0) {
            Boolean bool = f5919i.f5921b;
            z = bool != null ? bool.booleanValue() : true;
        }
        boolean z2 = z;
        if ((i5 & 4) != 0) {
            KeyboardType.f10809b.getClass();
            i3 = 0;
        }
        int i7 = i3;
        if ((i5 & 8) != 0) {
            ImeAction.f10785b.getClass();
            i4 = ImeAction.d;
        }
        this(i6, z2, i7, i4, null);
    }

    @Deprecated
    public KeyboardOptions(int i2, boolean z, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, Boolean.valueOf(z), i3, i4, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 96, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KeyboardOptions(int i2, boolean z, int i3, int i4, PlatformImeOptions platformImeOptions, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i5 & 1) != 0) {
            KeyboardCapitalization.f10804b.getClass();
            i2 = 0;
        }
        int i6 = i2;
        if ((i5 & 2) != 0) {
            Boolean bool = f5919i.f5921b;
            z = bool != null ? bool.booleanValue() : true;
        }
        boolean z2 = z;
        if ((i5 & 4) != 0) {
            KeyboardType.f10809b.getClass();
            i3 = KeyboardType.f10810c;
        }
        int i7 = i3;
        if ((i5 & 8) != 0) {
            ImeAction.f10785b.getClass();
            i4 = ImeAction.d;
        }
        this(i6, z2, i7, i4, (i5 & 16) != 0 ? null : platformImeOptions, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public KeyboardOptions(int i2, boolean z, int i3, int i4, PlatformImeOptions platformImeOptions, DefaultConstructorMarker defaultConstructorMarker) {
        Boolean boolValueOf = Boolean.valueOf(z);
        Boolean bool = f5919i.f5924f;
        this(i2, boolValueOf, i3, i4, platformImeOptions, Boolean.valueOf(bool != null ? bool.booleanValue() : true), (LocaleList) null, 64, (DefaultConstructorMarker) null);
    }
}
