package kotlinx.serialization.json.internal;

import java.util.LinkedHashMap;
import kotlin.DeepRecursiveScope;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.serialization.json.internal.JsonTreeReader", f = "JsonTreeReader.kt", l = {24}, m = "readObject")
final class JsonTreeReader$readObject$2 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DeepRecursiveScope f75809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JsonTreeReader f75810c;
    public LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f75811e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f75812f;
    public final /* synthetic */ JsonTreeReader g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f75813h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeReader$readObject$2(JsonTreeReader jsonTreeReader, BaseContinuationImpl baseContinuationImpl) {
        super(baseContinuationImpl);
        this.g = jsonTreeReader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f75812f = obj;
        this.f75813h |= Integer.MIN_VALUE;
        return JsonTreeReader.a(this.g, null, this);
    }
}
