package androidx.datastore.core;

import java.io.FileInputStream;
import java.nio.channels.FileLock;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.MultiProcessCoordinator", f = "MultiProcessCoordinator.android.kt", l = {62, 87}, m = "tryLock")
final class MultiProcessCoordinator$tryLock$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutexImpl f12799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FileInputStream f12800c;
    public FileLock d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f12801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f12802f;
    public final /* synthetic */ MultiProcessCoordinator g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12803h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiProcessCoordinator$tryLock$1(MultiProcessCoordinator multiProcessCoordinator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = multiProcessCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f12802f = obj;
        this.f12803h |= Integer.MIN_VALUE;
        return this.g.a(null, this);
    }
}
