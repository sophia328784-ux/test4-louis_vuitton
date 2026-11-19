package androidx.datastore.core;

import java.io.FileInputStream;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.FileReadScope", f = "FileStorage.kt", l = {169, 178}, m = "readData$suspendImpl")
final class FileReadScope$readData$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f12744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FileInputStream f12745c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FileReadScope f12746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12747f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileReadScope$readData$1(FileReadScope fileReadScope, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f12746e = fileReadScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f12747f |= Integer.MIN_VALUE;
        return FileReadScope.e(this.f12746e, this);
    }
}
