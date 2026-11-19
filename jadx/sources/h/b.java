package h;

import defpackage.n00;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class b implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f69533b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f69534c = "";

    public final String toString() {
        StringBuilder sb = new StringBuilder("apc_ip=");
        sb.append(this.f69533b);
        sb.append(",eth_ip=,bind_port=");
        return n00.r(this.f69534c, "", sb);
    }
}
