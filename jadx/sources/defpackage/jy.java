package defpackage;

import com.perfectcorp.perfectlib.ph.template.idc.e;
import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jy implements FilenameFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f71495b;

    public /* synthetic */ jy(String str, int i2) {
        this.f71494a = i2;
        this.f71495b = str;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        int i2 = this.f71494a;
        String str2 = this.f71495b;
        switch (i2) {
            case 0:
                return str.startsWith(str2);
            case 1:
                e eVar = e.f41662a;
                return str.endsWith(".obb") && !str.equalsIgnoreCase(str2);
            default:
                e eVar2 = e.f41662a;
                return str.equalsIgnoreCase(str2);
        }
    }
}
