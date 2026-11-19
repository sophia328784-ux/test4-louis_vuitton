package androidx.work;

import androidx.work.impl.model.WorkSpec;
import com.batch.android.s.b;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001:\u0002\u000b\fB'\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Landroidx/work/WorkRequest;", "", "Ljava/util/UUID;", b.a.f24015b, "Landroidx/work/impl/model/WorkSpec;", "workSpec", "", "", "tags", "<init>", "(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V", "Builder", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class WorkRequest {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f20281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WorkSpec f20282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f20283c;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u0000*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0004B\u0019\b\u0000\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/work/WorkRequest$Builder;", NBSSpanMetricUnit.Byte, "Landroidx/work/WorkRequest;", "W", "", "Ljava/lang/Class;", "Landroidx/work/ListenableWorker;", "workerClass", "<init>", "(Ljava/lang/Class;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Builder<B extends Builder<B, ?>, W extends WorkRequest> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public UUID f20284a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public WorkSpec f20285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final LinkedHashSet f20286c;

        public Builder(Class<? extends ListenableWorker> cls) {
            cls.getClass();
            UUID uuidRandomUUID = UUID.randomUUID();
            uuidRandomUUID.getClass();
            this.f20284a = uuidRandomUUID;
            String string = this.f20284a.toString();
            string.getClass();
            this.f20285b = new WorkSpec(string, cls.getName());
            this.f20286c = SetsKt.e(cls.getName());
        }

        public final WorkRequest a() {
            OneTimeWorkRequest oneTimeWorkRequest = new OneTimeWorkRequest((OneTimeWorkRequest.Builder) this);
            Constraints constraints = this.f20285b.f20517j;
            boolean z = !constraints.f20232i.isEmpty() || constraints.f20229e || constraints.f20228c || constraints.d;
            WorkSpec workSpec = this.f20285b;
            if (workSpec.q) {
                if (z) {
                    md.n("Expedited jobs only support network and storage constraints");
                    return null;
                }
                if (workSpec.g > 0) {
                    md.n("Expedited jobs cannot be delayed");
                    return null;
                }
            }
            String str = workSpec.x;
            if (str == null) {
                Companion companion = WorkRequest.d;
                String str2 = workSpec.f20512c;
                companion.getClass();
                List listSplit$default = StringsKt__StringsKt.split$default(str2, new String[]{FileUtils.HIDDEN_PREFIX}, false, 0, 6, null);
                String strV = listSplit$default.size() == 1 ? (String) listSplit$default.get(0) : (String) CollectionsKt.M(listSplit$default);
                if (strV.length() > 127) {
                    strV = StringsKt.V(CertificateBody.profileType, strV);
                }
                workSpec.x = strV;
            } else if (str.length() > 127) {
                this.f20285b.x = StringsKt.V(CertificateBody.profileType, str);
            }
            UUID uuidRandomUUID = UUID.randomUUID();
            uuidRandomUUID.getClass();
            this.f20284a = uuidRandomUUID;
            String string = uuidRandomUUID.toString();
            string.getClass();
            this.f20285b = new WorkSpec(string, this.f20285b);
            return oneTimeWorkRequest;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/work/WorkRequest$Companion;", "", "", "DEFAULT_BACKOFF_DELAY_MILLIS", "J", "MAX_BACKOFF_MILLIS", "MIN_BACKOFF_MILLIS", "", "MAX_TRACE_SPAN_LENGTH", "I", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WorkRequest(UUID uuid, WorkSpec workSpec, Set<String> set) {
        uuid.getClass();
        workSpec.getClass();
        set.getClass();
        this.f20281a = uuid;
        this.f20282b = workSpec;
        this.f20283c = set;
    }
}
