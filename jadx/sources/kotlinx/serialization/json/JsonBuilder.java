package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/JsonBuilder;", "", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lkotlinx/serialization/json/Json;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f75725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f75726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f75727c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f75728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f75729f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f75730h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ClassDiscriminatorMode f75731i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f75732j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final JsonNamingStrategy f75733k;
    public boolean l;
    public boolean m;
    public final boolean n;
    public boolean o;
    public final boolean p;
    public final boolean q;
    public final SerializersModule r;

    public JsonBuilder(Json json) {
        json.getClass();
        JsonConfiguration jsonConfiguration = json.f75716a;
        this.f75725a = jsonConfiguration.f75734a;
        this.f75726b = jsonConfiguration.f75738f;
        this.f75727c = jsonConfiguration.f75735b;
        this.d = jsonConfiguration.f75736c;
        this.f75728e = jsonConfiguration.f75737e;
        this.f75729f = jsonConfiguration.g;
        this.g = jsonConfiguration.f75739h;
        this.f75730h = jsonConfiguration.f75741j;
        this.f75731i = jsonConfiguration.q;
        this.f75732j = jsonConfiguration.l;
        this.f75733k = jsonConfiguration.m;
        this.l = jsonConfiguration.n;
        this.m = jsonConfiguration.o;
        this.n = jsonConfiguration.p;
        this.o = jsonConfiguration.f75742k;
        this.p = jsonConfiguration.d;
        this.q = jsonConfiguration.f75740i;
        this.r = json.f75717b;
    }
}
