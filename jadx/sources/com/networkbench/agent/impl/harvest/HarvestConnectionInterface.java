package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.harvest.a.h;
import com.networkbench.agent.impl.harvest.d.c;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface HarvestConnectionInterface {
    c sendDataFile(Map<String, String[]> map, h hVar) throws Exception;

    c sendDataGet(h hVar) throws Exception;

    c sendDataOutputStream(byte[] bArr, h hVar) throws Exception;

    c sendDataStr(String str, h hVar) throws Exception;
}
