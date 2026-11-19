package kotlinx.serialization.json.internal;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;", "Lkotlinx/serialization/json/internal/JsonTreeDecoder;", "Lkotlinx/serialization/json/Json;", "json", "Lkotlinx/serialization/json/JsonObject;", "value", "<init>", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class JsonTreeMapDecoder extends JsonTreeDecoder {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final JsonObject f75803k;
    public final List l;
    public final int m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeMapDecoder(Json json, JsonObject jsonObject) {
        super(json, jsonObject, null, null, 12, null);
        json.getClass();
        jsonObject.getClass();
        this.f75803k = jsonObject;
        List listY0 = CollectionsKt.y0(jsonObject.f75756b.keySet());
        this.l = listY0;
        this.m = listY0.size() * 2;
        this.n = -1;
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.internal.NamedValueDecoder
    public final String V(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return (String) this.l.get(i2 / 2);
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public final JsonElement X(String str) {
        str.getClass();
        return this.n % 2 == 0 ? JsonElementKt.a(str) : (JsonElement) MapsKt.d(this.f75803k, str);
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    /* JADX INFO: renamed from: Z */
    public final JsonElement getG() {
        return this.f75803k;
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public final void c(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder
    /* JADX INFO: renamed from: c0, reason: from getter */
    public final JsonObject getF75803k() {
        return this.f75803k;
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public final int n(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        int i2 = this.n;
        if (i2 >= this.m - 1) {
            return -1;
        }
        int i3 = i2 + 1;
        this.n = i3;
        return i3;
    }
}
