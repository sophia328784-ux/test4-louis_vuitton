package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/json/internal/JsonTreeListDecoder;", "Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;", "Lkotlinx/serialization/json/Json;", "json", "Lkotlinx/serialization/json/JsonArray;", "value", "<init>", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class JsonTreeListDecoder extends AbstractJsonTreeDecoder {
    public final JsonArray g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f75801h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f75802i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeListDecoder(Json json, JsonArray jsonArray) {
        super(json, jsonArray, null, 4, null);
        json.getClass();
        jsonArray.getClass();
        this.g = jsonArray;
        this.f75801h = jsonArray.f75719b.size();
        this.f75802i = -1;
    }

    @Override // kotlinx.serialization.internal.NamedValueDecoder
    public final String V(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return String.valueOf(i2);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public final JsonElement X(String str) {
        str.getClass();
        return (JsonElement) this.g.f75719b.get(Integer.parseInt(str));
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    /* JADX INFO: renamed from: Z */
    public final JsonElement getD() {
        return this.g;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int n(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        int i2 = this.f75802i;
        if (i2 >= this.f75801h - 1) {
            return -1;
        }
        int i3 = i2 + 1;
        this.f75802i = i3;
        return i3;
    }
}
