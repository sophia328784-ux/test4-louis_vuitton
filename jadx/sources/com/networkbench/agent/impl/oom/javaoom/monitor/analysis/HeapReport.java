package com.networkbench.agent.impl.oom.javaoom.monitor.analysis;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HeapReport {
    public Boolean analysisDone;
    public Integer reAnalysisTimes;
    public RunningInfo runningInfo = new RunningInfo();
    public List<GCPath> gcPaths = new ArrayList();
    public List<ClassInfo> classInfos = new ArrayList();
    public List<LeakObject> leakObjects = new ArrayList();

    public static class ClassInfo {
        public String className;
        public String instanceCount;
        public String leakInstanceCount;
    }

    public static class GCPath {
        public String gcRoot;
        public Integer instanceCount;
        public String leakObjectId;
        public String leakReason;
        public List<PathItem> path = new ArrayList();
        public List<PathItem> selfTracePath = new ArrayList();
        public String signature;

        public static class PathItem {
            String declaredClass;
            String reference;
            String referenceId;
            String referenceType;
            int retainedHeapByteSize;
            int retainedObjectCount;
            int shallowSize;
        }
    }

    public static class LeakObject {
        public String className;
        public String extDetail;
        public String objectId;
        public String size;
    }

    public static class RunningInfo {
        public String analysisReason;
        public String appVersion;
        public String buildModel;
        public String currentPage;
        public String deviceMemAvaliable;
        public String deviceMemTotal;
        public String dumpReason;
        public String fdCount;
        public String filterInstanceTime;
        public String findGCPathTime;
        public String heapMetaData;
        public String jvmMax;
        public String jvmUsed;
        public String koomVersion;
        public String manufacture;
        public String nowTime;
        public String pss;
        public String rss;
        public String sdkInt;
        public String threadCount;
        public String usageSeconds;
        public String vss;
        public List<String> threadList = new ArrayList();
        public List<String> fdList = new ArrayList();
    }
}
