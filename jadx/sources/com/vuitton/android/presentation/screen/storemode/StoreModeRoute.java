package com.vuitton.android.presentation.screen.storemode;

import defpackage.d21;
import defpackage.fc;
import defpackage.o11;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\b\n\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;", "", "Welcome", "StoreModeHome", "Home", "Level1", "Level2", "Level3", "Plp", "Psp", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Home;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level1;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Plp;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Psp;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$StoreModeHome;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Welcome;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeRoute {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Home;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Home extends StoreModeRoute {
        public static final Home INSTANCE = new Home(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f64773a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new o11(3));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Home);
        }

        public final int hashCode() {
            return 1068210271;
        }

        public final KSerializer<Home> serializer() {
            return (KSerializer) f64773a.getF71699b();
        }

        public final String toString() {
            return "Home";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level1;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Level1 extends StoreModeRoute {
        public static final Level1 INSTANCE = new Level1(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f64774a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new o11(4));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Level1);
        }

        public final int hashCode() {
            return 158439597;
        }

        public final KSerializer<Level1> serializer() {
            return (KSerializer) f64774a.getF71699b();
        }

        public final String toString() {
            return "Level1";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Psp;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Psp extends StoreModeRoute {
        public static final Psp INSTANCE = new Psp(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f64783a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new o11(5));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Psp);
        }

        public final int hashCode() {
            return 1558486861;
        }

        public final KSerializer<Psp> serializer() {
            return (KSerializer) f64783a.getF71699b();
        }

        public final String toString() {
            return "Psp";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$StoreModeHome;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StoreModeHome extends StoreModeRoute {
        public static final StoreModeHome INSTANCE = new StoreModeHome(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f64784a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new o11(6));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof StoreModeHome);
        }

        public final int hashCode() {
            return -928886365;
        }

        public final KSerializer<StoreModeHome> serializer() {
            return (KSerializer) f64784a.getF71699b();
        }

        public final String toString() {
            return "StoreModeHome";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Welcome;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Welcome extends StoreModeRoute {
        public static final Welcome INSTANCE = new Welcome(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f64785a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new o11(7));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Welcome);
        }

        public final int hashCode() {
            return 1779976162;
        }

        public final KSerializer<Welcome> serializer() {
            return (KSerializer) f64785a.getF71699b();
        }

        public final String toString() {
            return "Welcome";
        }
    }

    public StoreModeRoute(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;", "", "l1Id", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Level2 extends StoreModeRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64775a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Level2> serializer() {
                return StoreModeRoute$Level2$$serializer.f64776a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Level2(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, StoreModeRoute$Level2$$serializer.f64776a.getF19838b());
                throw null;
            }
            this.f64775a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Level2) && Intrinsics.c(this.f64775a, ((Level2) obj).f64775a);
        }

        public final int hashCode() {
            return this.f64775a.hashCode();
        }

        public final String toString() {
            return fc.h("Level2(l1Id=", this.f64775a, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Level2(String str) {
            super(null);
            str.getClass();
            this.f64775a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;", "", "l1Id", "l2Id", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Level3 extends StoreModeRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64777a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64778b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Level3> serializer() {
                return StoreModeRoute$Level3$$serializer.f64779a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Level3(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, StoreModeRoute$Level3$$serializer.f64779a.getF19838b());
                throw null;
            }
            this.f64777a = str;
            this.f64778b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Level3)) {
                return false;
            }
            Level3 level3 = (Level3) obj;
            return Intrinsics.c(this.f64777a, level3.f64777a) && Intrinsics.c(this.f64778b, level3.f64778b);
        }

        public final int hashCode() {
            return this.f64778b.hashCode() + (this.f64777a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("Level3(l1Id=", this.f64777a, ", l2Id=", this.f64778b, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Level3(String str, String str2) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f64777a = str;
            this.f64778b = str2;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Plp;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;", "", "plpId", "l3Title", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Plp extends StoreModeRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64780a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64781b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Plp$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Plp;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Plp> serializer() {
                return StoreModeRoute$Plp$$serializer.f64782a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Plp(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, StoreModeRoute$Plp$$serializer.f64782a.getF19838b());
                throw null;
            }
            this.f64780a = str;
            this.f64781b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Plp)) {
                return false;
            }
            Plp plp = (Plp) obj;
            return Intrinsics.c(this.f64780a, plp.f64780a) && Intrinsics.c(this.f64781b, plp.f64781b);
        }

        public final int hashCode() {
            return this.f64781b.hashCode() + (this.f64780a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("Plp(plpId=", this.f64780a, ", l3Title=", this.f64781b, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Plp(String str, String str2) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f64780a = str;
            this.f64781b = str2;
        }
    }
}
