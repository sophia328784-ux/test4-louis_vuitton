package kotlinx.serialization.internal;

import defpackage.b21;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/serialization/internal/MapLikeDescriptor;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Lkotlinx/serialization/internal/HashMapClassDesc;", "Lkotlinx/serialization/internal/LinkedHashMapClassDesc;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class MapLikeDescriptor implements SerialDescriptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f75640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SerialDescriptor f75641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SerialDescriptor f75642c;

    public MapLikeDescriptor(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f75640a = str;
        this.f75641b = serialDescriptor;
        this.f75642c = serialDescriptor2;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int c(String str) {
        str.getClass();
        Integer intOrNull = StringsKt.toIntOrNull(str);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        md.n(d21.j(str, " is not a valid map index"));
        return 0;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: d */
    public final int getF75549c() {
        return 2;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: e */
    public final SerialKind getF75548b() {
        return StructureKind.MAP.f75566a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapLikeDescriptor)) {
            return false;
        }
        MapLikeDescriptor mapLikeDescriptor = (MapLikeDescriptor) obj;
        return Intrinsics.c(this.f75640a, mapLikeDescriptor.f75640a) && Intrinsics.c(this.f75641b, mapLikeDescriptor.f75641b) && Intrinsics.c(this.f75642c, mapLikeDescriptor.f75642c);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String f(int i2) {
        return String.valueOf(i2);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List g(int i2) {
        if (i2 >= 0) {
            return EmptyList.f71768b;
        }
        b21.n(n00.r(this.f75640a, " expects only non-negative indices", fc.q(i2, "Illegal index ", ", ")));
        return null;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor h(int i2) {
        if (i2 < 0) {
            b21.n(n00.r(this.f75640a, " expects only non-negative indices", fc.q(i2, "Illegal index ", ", ")));
            return null;
        }
        int i3 = i2 % 2;
        if (i3 == 0) {
            return this.f75641b;
        }
        if (i3 == 1) {
            return this.f75642c;
        }
        md.k("Unreached");
        return null;
    }

    public final int hashCode() {
        return this.f75642c.hashCode() + ((this.f75641b.hashCode() + (this.f75640a.hashCode() * 31)) * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getF75640a() {
        return this.f75640a;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean j(int i2) {
        if (i2 >= 0) {
            return false;
        }
        b21.n(n00.r(this.f75640a, " expects only non-negative indices", fc.q(i2, "Illegal index ", ", ")));
        return false;
    }

    public final String toString() {
        return this.f75640a + '(' + this.f75641b + ", " + this.f75642c + ')';
    }
}
