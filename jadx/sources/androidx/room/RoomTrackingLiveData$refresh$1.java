package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.RoomTrackingLiveData", f = "RoomTrackingLiveData.android.kt", l = {EACTags.HISTORICAL_BYTES}, m = "refresh")
final class RoomTrackingLiveData$refresh$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RoomTrackingLiveData f19507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19508c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RoomTrackingLiveData f19509e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19510f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomTrackingLiveData$refresh$1(RoomTrackingLiveData roomTrackingLiveData, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f19509e = roomTrackingLiveData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f19510f |= Integer.MIN_VALUE;
        return RoomTrackingLiveData.b(this.f19509e, this);
    }
}
