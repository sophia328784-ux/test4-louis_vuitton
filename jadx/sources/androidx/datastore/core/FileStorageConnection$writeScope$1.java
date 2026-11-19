package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", l = {214, 118}, m = "writeScope")
final class FileStorageConnection$writeScope$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FileStorageConnection f12764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f12765c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FileWriteScope f12766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f12767f;
    public final /* synthetic */ FileStorageConnection g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12768h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileStorageConnection$writeScope$1(FileStorageConnection fileStorageConnection, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = fileStorageConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f12767f = obj;
        this.f12768h |= Integer.MIN_VALUE;
        return this.g.c(null, this);
    }
}
