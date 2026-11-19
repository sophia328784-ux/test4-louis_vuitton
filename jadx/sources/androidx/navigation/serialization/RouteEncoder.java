package androidx.navigation.serialization;

import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import defpackage.fc;
import defpackage.tg0;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B1\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b0\u0006¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/navigation/serialization/RouteEncoder;", "", "T", "Lkotlinx/serialization/encoding/AbstractEncoder;", "Lkotlinx/serialization/KSerializer;", "serializer", "", "", "Landroidx/navigation/NavType;", "typeMap", "<init>", "(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RouteEncoder<T> extends AbstractEncoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f18369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f18370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SerialModuleImpl f18371c;
    public final LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18372e;

    public RouteEncoder(KSerializer<T> kSerializer, Map<String, ? extends NavType<Object>> map) {
        kSerializer.getClass();
        map.getClass();
        this.f18369a = kSerializer;
        this.f18370b = map;
        this.f18371c = SerializersModuleKt.f75847a;
        this.d = new LinkedHashMap();
        this.f18372e = -1;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public final void F(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        this.f18372e = i2;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public final void G(Object obj) {
        obj.getClass();
        I(obj);
    }

    public final Map H(Object obj) {
        obj.getClass();
        super.d(this.f18369a, obj);
        return MapsKt.o(this.d);
    }

    public final void I(Object obj) {
        String strF = this.f18369a.getF19838b().f(this.f18372e);
        NavType navType = (NavType) this.f18370b.get(strF);
        if (navType != null) {
            this.d.put(strF, navType instanceof CollectionNavType ? ((CollectionNavType) navType).i(obj) : CollectionsKt.O(navType.f(obj)));
        } else {
            tg0.c(fc.h("Cannot find NavType for argument ", strF, ". Please provide NavType through typeMap."));
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    /* JADX INFO: renamed from: a */
    public final SerializersModule getF75826e() {
        return this.f18371c;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void d(SerializationStrategy serializationStrategy, Object obj) {
        serializationStrategy.getClass();
        I(obj);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final Encoder m(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (RouteSerializerKt.e(serialDescriptor)) {
            this.f18372e = 0;
        }
        return this;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void p() {
        I(null);
    }
}
