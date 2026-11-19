package androidx.datastore.core;

import java.io.Serializable;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataMigrationInitializer$Companion", f = "DataMigrationInitializer.kt", l = {EACTags.CURRENCY_CODE, 57}, m = "runMigrations")
final class DataMigrationInitializer$Companion$runMigrations$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Serializable f12615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Iterator f12616c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DataMigrationInitializer.Companion f12617e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12618f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$runMigrations$1(DataMigrationInitializer.Companion companion, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f12617e = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f12618f |= Integer.MIN_VALUE;
        return DataMigrationInitializer.Companion.a(this.f12617e, null, null, this);
    }
}
