package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.linkplay.medialib.ContentTree;
import com.vuitton.android.R;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\nB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;", "", "", "callingCode", "regionCodeIso31661Alpha2", "number", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;)V", "Type", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PhoneNumber {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f57393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57394c;
    public final Type d;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber$Type[], still in use, count: 1, list:
      (r0v1 com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber$Type[]) from 0x0033: INVOKE (r0v1 com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber$Type[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;", "", "", "value", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "", "displayStringId", "I", "a", "()I", "Companion", "MOBILE", "HOME", "WORK", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Type {
        MOBILE("mobile", R.string.mylv_myprofile_myinfos_address_phonenumber_mobile),
        HOME("home", R.string.mylv_myprofile_myinfos_address_phonenumber_home),
        WORK("work", R.string.mylv_myprofile_myinfos_address_phonenumber_work);

        private static final /* synthetic */ EnumEntries $ENTRIES;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final int displayStringId;
        private final String value;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public static Type a(String str) {
                str.getClass();
                Type type = Type.MOBILE;
                if (!str.equals(type.getValue())) {
                    Type type2 = Type.HOME;
                    if (str.equals(type2.getValue())) {
                        return type2;
                    }
                    Type type3 = Type.WORK;
                    if (str.equals(type3.getValue())) {
                        return type3;
                    }
                }
                return type;
            }
        }

        static {
            $ENTRIES = EnumEntriesKt.a(new Type[]{r0, r1, r2});
        }

        public Type(String str, int i2) {
            super(str, i);
            this.value = str;
            this.displayStringId = i2;
        }

        public static EnumEntries b() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final int getDisplayStringId() {
            return this.displayStringId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getValue() {
            return this.value;
        }
    }

    public PhoneNumber(String str, String str2, String str3, Type type) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        type.getClass();
        this.f57392a = str;
        this.f57393b = str2;
        this.f57394c = str3;
        this.d = type;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PhoneNumber)) {
            return false;
        }
        PhoneNumber phoneNumber = (PhoneNumber) obj;
        return Intrinsics.c(this.f57392a, phoneNumber.f57392a) && Intrinsics.c(this.f57393b, phoneNumber.f57393b) && Intrinsics.c(this.f57394c, phoneNumber.f57394c) && this.d == phoneNumber.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f57392a.hashCode() * 31, 31, this.f57393b), 31, this.f57394c);
    }

    public final String toString() {
        String str = this.f57394c;
        if (StringsKt.w(str)) {
            return "";
        }
        if (StringsKt.P(str, "+", false)) {
            return str;
        }
        boolean zP = StringsKt.P(str, ContentTree.ROOT_ID, false);
        String str2 = this.f57392a;
        return zP ? d21.j(str2, StringsKt.n(1, str)) : d21.j(str2, str);
    }

    public /* synthetic */ PhoneNumber(String str, String str2, String str3, Type type, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? Type.MOBILE : type);
    }
}
