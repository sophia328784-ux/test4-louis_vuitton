package com.networkbench.agent.impl.util;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class aj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f38325a = com.networkbench.agent.impl.c.f.a();

    public static boolean a(String str, int i2, List<com.networkbench.agent.impl.data.j.a> list) {
        if (list == null) {
            return false;
        }
        try {
            if (list.size() <= 0) {
                return false;
            }
            for (com.networkbench.agent.impl.data.j.a aVar : list) {
                String str2 = aVar.f36920c;
                int i3 = aVar.f36918a;
                String str3 = aVar.f36919b;
                if (i3 == 0) {
                    if (str.contains(str3)) {
                        if (str2.contains("" + i2)) {
                            return true;
                        }
                    } else {
                        continue;
                    }
                } else if (i3 == 1) {
                    try {
                        if (Pattern.compile(str3, 2).matcher(str).find()) {
                            if (str2.contains("" + i2)) {
                                return true;
                            }
                        } else {
                            continue;
                        }
                    } catch (Throwable th) {
                        f38325a.a("URLFilterUtils errorFilter Pattern.compile has an error :" + th.getMessage());
                    }
                } else {
                    continue;
                }
            }
            return false;
        } catch (Throwable th2) {
            f38325a.a("URLFilterUtils errorFilter has an error :" + th2.getMessage());
            return false;
        }
    }

    public static boolean b(String str, int i2, List<com.networkbench.agent.impl.data.j.b> list) {
        try {
            f38325a.a("urlFilter:" + str + ", ulrFilterMode:" + i2);
            f38325a.a("urlMatchList:");
            if (list != null) {
                for (com.networkbench.agent.impl.data.j.b bVar : list) {
                    f38325a.a("match mode:" + bVar.f36921a);
                    f38325a.a("match rule:" + bVar.f36922b);
                }
            }
            if (i2 != 0) {
                if (list != null) {
                    for (com.networkbench.agent.impl.data.j.b bVar2 : list) {
                        int i3 = bVar2.f36921a;
                        String str2 = bVar2.f36922b;
                        if (i3 == 0) {
                            if (str.contains(str2)) {
                                return i2 == 1;
                            }
                        } else if (i3 == 1) {
                            try {
                                if (Pattern.compile(str2, 2).matcher(str).find()) {
                                    return i2 == 1;
                                }
                            } catch (Throwable th) {
                                f38325a.a("URLFilterUtils urlFilter   Pattern.compile error : " + th.getMessage());
                            }
                        } else {
                            continue;
                        }
                    }
                }
                return i2 != 1;
            }
        } catch (Throwable th2) {
            f38325a.a("URLFilterUtils urlFilter error : " + th2.getMessage());
        }
        return true;
    }

    public static boolean a(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (str.length() > 1024) {
                    str = str.substring(0, 1024);
                }
                NBSAndroidAgentImpl impl = NBSAgent.getImpl();
                HarvestConfiguration harvestConfigurationM = impl != null ? impl.m() : null;
                if (harvestConfigurationM != null && !b(str, harvestConfigurationM.getUrlFilterMode(), harvestConfigurationM.getUrlRules())) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            r.A.f("filterNameList e:" + e2.getMessage());
            return false;
        }
    }

    public static void a(ActionData actionData) {
        if (actionData == null || a(actionData.getUrl(), actionData.getStatusCode()) != 200) {
            return;
        }
        actionData.setStatusCode(200);
        actionData.setErrorCode(0);
    }

    public static int a(String str, int i2) {
        if (!TextUtils.isEmpty(str) && str.length() > 1024) {
            str = str.substring(0, 1024);
        }
        NBSAndroidAgentImpl impl = NBSAgent.getImpl();
        HarvestConfiguration harvestConfigurationM = impl != null ? impl.m() : null;
        if (harvestConfigurationM == null || !a(str, i2, harvestConfigurationM.getIgnoreErrRules())) {
            return i2;
        }
        return 200;
    }
}
