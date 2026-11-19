package androidx.compose.runtime.tooling;

import com.sightcall.universal.agent.Location;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\b\u0012\u0006\u0010\u000e\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/runtime/tooling/SourceInformation;", "", "", "isCall", "isInline", "", "functionName", "sourceFile", "", "Landroidx/compose/runtime/tooling/ParameterSourceInformation;", "parameters", "packageHash", "Landroidx/compose/runtime/tooling/LocationSourceInformation;", Location.TYPE, "rawData", "<init>", "(ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SourceInformation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f8572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f8573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f8574c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f8575e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f8576f;

    public SourceInformation(boolean z, boolean z2, String str, String str2, List<ParameterSourceInformation> list, String str3, List<LocationSourceInformation> list2, String str4) {
        this.f8572a = z;
        this.f8573b = str;
        this.f8574c = str2;
        this.d = list;
        this.f8575e = str3;
        this.f8576f = list2;
    }
}
