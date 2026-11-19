package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bµ\u0001\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\t\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lkotlinx/serialization/json/JsonConfiguration;", "", "", "encodeDefaults", "ignoreUnknownKeys", "isLenient", "allowStructuredMapKeys", "prettyPrint", "explicitNulls", "", "prettyPrintIndent", "coerceInputValues", "useArrayPolymorphism", "classDiscriminator", "allowSpecialFloatingPointValues", "useAlternativeNames", "Lkotlinx/serialization/json/JsonNamingStrategy;", "namingStrategy", "decodeEnumsCaseInsensitive", "allowTrailingComma", "allowComments", "Lkotlinx/serialization/json/ClassDiscriminatorMode;", "classDiscriminatorMode", "<init>", "(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLkotlinx/serialization/json/JsonNamingStrategy;ZZZLkotlinx/serialization/json/ClassDiscriminatorMode;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f75734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f75735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f75736c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f75737e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f75738f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f75739h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f75740i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f75741j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f75742k;
    public final boolean l;
    public final JsonNamingStrategy m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final ClassDiscriminatorMode q;

    public /* synthetic */ JsonConfiguration(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str, boolean z7, boolean z8, String str2, boolean z9, boolean z10, JsonNamingStrategy jsonNamingStrategy, boolean z11, boolean z12, boolean z13, ClassDiscriminatorMode classDiscriminatorMode, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5, (i2 & 32) != 0 ? true : z6, (i2 & 64) != 0 ? "    " : str, (i2 & 128) != 0 ? false : z7, (i2 & 256) != 0 ? false : z8, (i2 & 512) != 0 ? "type" : str2, (i2 & 1024) != 0 ? false : z9, (i2 & 2048) == 0 ? z10 : true, (i2 & 4096) != 0 ? null : jsonNamingStrategy, (i2 & 8192) != 0 ? false : z11, (i2 & 16384) != 0 ? false : z12, (i2 & 32768) != 0 ? false : z13, (i2 & 65536) != 0 ? ClassDiscriminatorMode.POLYMORPHIC : classDiscriminatorMode);
    }

    public final String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.f75734a + ", ignoreUnknownKeys=" + this.f75735b + ", isLenient=" + this.f75736c + ", allowStructuredMapKeys=" + this.d + ", prettyPrint=" + this.f75737e + ", explicitNulls=" + this.f75738f + ", prettyPrintIndent='" + this.g + "', coerceInputValues=" + this.f75739h + ", useArrayPolymorphism=" + this.f75740i + ", classDiscriminator='" + this.f75741j + "', allowSpecialFloatingPointValues=" + this.f75742k + ", useAlternativeNames=" + this.l + ", namingStrategy=" + this.m + ", decodeEnumsCaseInsensitive=" + this.n + ", allowTrailingComma=" + this.o + ", allowComments=" + this.p + ", classDiscriminatorMode=" + this.q + ')';
    }

    public JsonConfiguration(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str, boolean z7, boolean z8, String str2, boolean z9, boolean z10, JsonNamingStrategy jsonNamingStrategy, boolean z11, boolean z12, boolean z13, ClassDiscriminatorMode classDiscriminatorMode) {
        str.getClass();
        str2.getClass();
        classDiscriminatorMode.getClass();
        this.f75734a = z;
        this.f75735b = z2;
        this.f75736c = z3;
        this.d = z4;
        this.f75737e = z5;
        this.f75738f = z6;
        this.g = str;
        this.f75739h = z7;
        this.f75740i = z8;
        this.f75741j = str2;
        this.f75742k = z9;
        this.l = z10;
        this.m = jsonNamingStrategy;
        this.n = z11;
        this.o = z12;
        this.p = z13;
        this.q = classDiscriminatorMode;
    }

    public JsonConfiguration() {
        this(false, false, false, false, false, false, null, false, false, null, false, false, null, false, false, false, null, 131071, null);
    }
}
