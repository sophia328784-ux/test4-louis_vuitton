package com.networkbench.agent.impl.oom.javaoom.monitor.analysis;

import android.app.Application;
import android.app.IntentService;
import android.content.Intent;
import android.os.Build;
import android.os.Debug;
import android.os.ResultReceiver;
import com.networkbench.agent.impl.base.MonitorLog;
import com.networkbench.agent.impl.base.Monitor_ApplicationKt;
import com.networkbench.agent.impl.kshark.AndroidMetadataExtractor;
import com.networkbench.agent.impl.kshark.AndroidReferenceMatchers;
import com.networkbench.agent.impl.kshark.ApplicationLeak;
import com.networkbench.agent.impl.kshark.HeapAnalyzer;
import com.networkbench.agent.impl.kshark.HeapField;
import com.networkbench.agent.impl.kshark.HeapGraph;
import com.networkbench.agent.impl.kshark.HeapObject;
import com.networkbench.agent.impl.kshark.HprofHeapGraph;
import com.networkbench.agent.impl.kshark.HprofRecordTag;
import com.networkbench.agent.impl.kshark.LeakTrace;
import com.networkbench.agent.impl.kshark.LeakTraceObject;
import com.networkbench.agent.impl.kshark.LeakTraceReference;
import com.networkbench.agent.impl.kshark.LibraryLeak;
import com.networkbench.agent.impl.kshark.OnAnalysisProgressListener;
import com.networkbench.agent.impl.kshark.ProguardMapping;
import com.networkbench.agent.impl.kshark.SharkLog;
import com.networkbench.agent.impl.kshark.internal.AndroidNativeSizeMapper;
import com.networkbench.agent.impl.kshark.internal.ShallowSizeCalculator;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMFileManager;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.model.SystemInfo;
import com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit;
import com.networkbench.com.google.gson.Gson;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import defpackage.r81;
import io.jsonwebtoken.JwtParser;
import java.io.File;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 '2\u00020\u0001:\u0002'(B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u0010\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u001c\u0010\u0013\u001a\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00140\u0016H\u0002J,\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\t2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00140\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0012\u0010\u001c\u001a\u00020\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\nH\u0002J\b\u0010\u001e\u001a\u00020\u000eH\u0002J\b\u0010\u001f\u001a\u00020\u000eH\u0002J\u0012\u0010 \u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J,\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"0\b2\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020&H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;", "Landroid/app/IntentService;", "()V", "mHeapGraph", "Lcom/networkbench/agent/impl/kshark/HeapGraph;", "mLeakModel", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;", "mLeakReasonTable", "", "", "", "mLeakingObjectIds", "", "buildIndex", "", "hprofFile", "buildJson", "intent", "Landroid/content/Intent;", "calcAllNativeSize", "", "nativeSizes", "", "calcuShallowSize", "objectId", "shallowSizeCalculator", "Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;", "convertObjectIdToHex", "fillJsonFile", "jsonFile", "filterLeakingObjects", "findPathsToGcRoot", "onHandleIntent", "updateClassObjectCounterMap", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;", "classObCountMap", "instanceClassId", "isLeak", "", "Companion", "ObjectCounter", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class HeapAnalysisService extends IntentService {
    private static final String ACTIVITY_CLASS_NAME = "android.app.Activity";
    private static final String ANDROIDX_FRAGMENT_CLASS_NAME = "androidx.fragment.app.Fragment";
    public static final String BITMAP_CLASS_NAME = "android.graphics.Bitmap";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int DEFAULT_BIG_BITMAP = 1049089;
    private static final int DEFAULT_BIG_OBJECT_ARRAY = 262144;
    private static final int DEFAULT_BIG_PRIMITIVE_ARRAY = 262144;
    private static final String DESTROYED_FIELD_NAME = "mDestroyed";
    private static final String FINISHED_FIELD_NAME = "mFinished";
    private static final String FRAGMENT_MANAGER_FIELD_NAME = "mFragmentManager";
    private static final String FRAGMENT_MCALLED_FIELD_NAME = "mCalled";
    private static final String NATIVE_ALLOCATION_CLASS_NAME = "libcore.util.NativeAllocationRegistry";
    private static final String NATIVE_ALLOCATION_CLEANER_THUNK_CLASS_NAME = "libcore.util.NativeAllocationRegistry$CleanerThunk";
    private static final String NATIVE_FRAGMENT_CLASS_NAME = "android.app.Fragment";
    private static final String OOM_ANALYSIS_EXCEPTION_TAG = "OOMMonitor_Exception";
    private static final String OOM_ANALYSIS_TAG = "OOMMonitor";
    private static final int SAME_CLASS_LEAK_OBJECT_PATH_THRESHOLD = 45;
    private static final String SUPPORT_FRAGMENT_CLASS_NAME = "android.support.v4.app.Fragment";
    private static final String TAG = "OOMMonitor_HeapAnalysisService";
    private static final String WINDOW_CLASS_NAME = "android.view.Window";
    private HeapGraph mHeapGraph;
    private final HeapReport mLeakModel;
    private final Map<Long, String> mLeakReasonTable;
    private final Set<Long> mLeakingObjectIds;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;", "", "()V", "allCnt", "", "getAllCnt", "()I", "setAllCnt", "(I)V", "leakCnt", "getLeakCnt", "setLeakCnt", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public static final class ObjectCounter {
        private int allCnt;
        private int leakCnt;

        public final int getAllCnt() {
            return this.allCnt;
        }

        public final int getLeakCnt() {
            return this.leakCnt;
        }

        public final void setAllCnt(int i2) {
            this.allCnt = i2;
        }

        public final void setLeakCnt(int i2) {
            this.leakCnt = i2;
        }
    }

    public HeapAnalysisService() {
        super("HeapAnalysisService");
        this.mLeakModel = new HeapReport();
        this.mLeakingObjectIds = new LinkedHashSet();
        this.mLeakReasonTable = new LinkedHashMap();
    }

    private final void buildIndex(String hprofFile) {
        if (hprofFile == null || hprofFile.length() == 0) {
            return;
        }
        MonitorLog.i(TAG, "start analyze");
        SharkLog.INSTANCE.setLogger(new SharkLog.Logger() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.analysis.HeapAnalysisService.buildIndex.1
            public void d(Throwable throwable, String message) {
                throwable.getClass();
                message.getClass();
                System.out.println((Object) message);
                throwable.printStackTrace();
            }

            public void d(String message) {
                message.getClass();
                System.out.println((Object) message);
            }
        });
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.mHeapGraph = HprofHeapGraph.Companion.openHeapGraph(new File(hprofFile), (ProguardMapping) null, ArraysKt.Z(new HprofRecordTag[]{HprofRecordTag.ROOT_JNI_GLOBAL, HprofRecordTag.ROOT_JNI_LOCAL, HprofRecordTag.ROOT_NATIVE_STACK, HprofRecordTag.ROOT_STICKY_CLASS, HprofRecordTag.ROOT_THREAD_BLOCK, HprofRecordTag.ROOT_THREAD_OBJECT}));
        MonitorLog.i(TAG, d21.g(System.currentTimeMillis() - jCurrentTimeMillis, "build index cost time: "));
    }

    private final void buildJson(Intent intent) {
        HeapReport heapReport = this.mLeakModel;
        HeapReport.RunningInfo runningInfo = new HeapReport.RunningInfo();
        runningInfo.jvmMax = intent != null ? intent.getStringExtra("JAVA_MAX_MEM") : null;
        runningInfo.jvmUsed = intent != null ? intent.getStringExtra("JAVA_USED_MEM") : null;
        runningInfo.threadCount = intent != null ? intent.getStringExtra("THREAD") : null;
        runningInfo.fdCount = intent != null ? intent.getStringExtra("FD") : null;
        runningInfo.vss = intent != null ? intent.getStringExtra("VSS") : null;
        runningInfo.pss = intent != null ? intent.getStringExtra("PSS") : null;
        runningInfo.rss = intent != null ? intent.getStringExtra("RSS") : null;
        runningInfo.sdkInt = intent != null ? intent.getStringExtra("SDK") : null;
        runningInfo.manufacture = intent != null ? intent.getStringExtra("MANUFACTURE") : null;
        runningInfo.buildModel = intent != null ? intent.getStringExtra("MODEL") : null;
        runningInfo.usageSeconds = intent != null ? intent.getStringExtra("USAGE_TIME") : null;
        runningInfo.currentPage = intent != null ? intent.getStringExtra("CURRENT_PAGE") : null;
        runningInfo.nowTime = intent != null ? intent.getStringExtra("TIME") : null;
        runningInfo.deviceMemTotal = intent != null ? intent.getStringExtra("DEVICE_MAX_MEM") : null;
        runningInfo.deviceMemAvaliable = intent != null ? intent.getStringExtra("DEVICE_AVA_MEM") : null;
        runningInfo.dumpReason = intent != null ? intent.getStringExtra("REASON") : null;
        MonitorLog.i(TAG, "handle Intent, fdCount:" + runningInfo.fdCount + " pss:" + runningInfo.pss + " rss:" + runningInfo.rss + " vss:" + runningInfo.vss + " threadCount:" + runningInfo.threadCount);
        OOMFileManager.createDumpFile(OOMFileManager.getFdDumpDir()).delete();
        OOMFileManager.createDumpFile(OOMFileManager.getThreadDumpDir()).delete();
        heapReport.runningInfo = runningInfo;
    }

    private final int calcAllNativeSize(Map<Long, Integer> nativeSizes) {
        int iIntValue = 0;
        for (Map.Entry<Long, Integer> entry : nativeSizes.entrySet()) {
            entry.getKey().longValue();
            iIntValue += entry.getValue().intValue();
        }
        return iIntValue;
    }

    private final int calcuShallowSize(long objectId, Map<Long, Integer> nativeSizes, ShallowSizeCalculator shallowSizeCalculator) {
        Integer num = nativeSizes.get(Long.valueOf(objectId));
        return (num != null ? num.intValue() : 0) + shallowSizeCalculator.computeShallowSize(objectId);
    }

    private final String convertObjectIdToHex(long objectId) {
        return "0x" + Long.toHexString(objectId);
    }

    private final void fillJsonFile(String jsonFile) {
        String json = new Gson().toJson(this.mLeakModel);
        if (jsonFile != null) {
            try {
                File file = new File(jsonFile);
                json.getClass();
                FilesKt.d(file, json);
            } catch (IOException e2) {
                e2.printStackTrace();
                MonitorLog.i(OOM_ANALYSIS_TAG, "JSON write exception: " + json, true);
                return;
            }
        }
        MonitorLog.i(OOM_ANALYSIS_TAG, "JSON write success: " + json);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0182  */
    /* JADX WARN: Code duplicated, block: B:54:0x01fe  */
    /* JADX WARN: Instruction removed from duplicated block: B:54:0x01fe, please report this as an issue */
    private final void filterLeakingObjects() {
        long j2;
        HeapObject.HeapClass heapClass;
        HeapObject.HeapClass heapClass2;
        Iterator it;
        Pair pair;
        String str;
        ObjectCounter objectCounterUpdateClassObjectCounterMap;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = "filterLeakingObjects " + Thread.currentThread();
        String str3 = TAG;
        MonitorLog.i(TAG, str2);
        HeapGraph heapGraph = this.mHeapGraph;
        String str4 = "mHeapGraph";
        if (heapGraph == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        HeapObject.HeapClass heapClassFindClassByName = heapGraph.findClassByName(ACTIVITY_CLASS_NAME);
        HeapGraph heapGraph2 = this.mHeapGraph;
        if (heapGraph2 == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        HeapObject.HeapClass heapClassFindClassByName2 = heapGraph2.findClassByName(ANDROIDX_FRAGMENT_CLASS_NAME);
        if (heapClassFindClassByName2 == null) {
            HeapGraph heapGraph3 = this.mHeapGraph;
            if (heapGraph3 == null) {
                Intrinsics.h("mHeapGraph");
                throw null;
            }
            heapClassFindClassByName2 = heapGraph3.findClassByName(NATIVE_FRAGMENT_CLASS_NAME);
        }
        if (heapClassFindClassByName2 == null) {
            HeapGraph heapGraph4 = this.mHeapGraph;
            if (heapGraph4 == null) {
                Intrinsics.h("mHeapGraph");
                throw null;
            }
            heapClassFindClassByName2 = heapGraph4.findClassByName(SUPPORT_FRAGMENT_CLASS_NAME);
        }
        HeapGraph heapGraph5 = this.mHeapGraph;
        if (heapGraph5 == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        HeapObject.HeapClass heapClassFindClassByName3 = heapGraph5.findClassByName(BITMAP_CLASS_NAME);
        HeapGraph heapGraph6 = this.mHeapGraph;
        if (heapGraph6 == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        HeapObject.HeapClass heapClassFindClassByName4 = heapGraph6.findClassByName(NATIVE_ALLOCATION_CLASS_NAME);
        HeapGraph heapGraph7 = this.mHeapGraph;
        if (heapGraph7 == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        HeapObject.HeapClass heapClassFindClassByName5 = heapGraph7.findClassByName(NATIVE_ALLOCATION_CLEANER_THUNK_CLASS_NAME);
        HeapGraph heapGraph8 = this.mHeapGraph;
        if (heapGraph8 == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        HeapObject.HeapClass heapClassFindClassByName6 = heapGraph8.findClassByName(WINDOW_CLASS_NAME);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        HeapGraph heapGraph9 = this.mHeapGraph;
        if (heapGraph9 == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        Iterator f74480a = heapGraph9.getInstances().getF74480a();
        while (true) {
            j2 = jCurrentTimeMillis;
            HeapObject.HeapClass heapClass3 = heapClassFindClassByName;
            if (!f74480a.hasNext()) {
                break;
            }
            String str5 = str4;
            HeapObject.HeapInstance heapInstance = (HeapObject.HeapInstance) f74480a.next();
            if (heapInstance.isPrimitiveWrapper()) {
                str = str3;
                it = f74480a;
                heapClass = heapClassFindClassByName2;
                heapClass2 = heapClassFindClassByName3;
                heapClassFindClassByName4 = heapClassFindClassByName4;
                heapClassFindClassByName5 = heapClassFindClassByName5;
            } else {
                heapClass = heapClassFindClassByName2;
                heapClass2 = heapClassFindClassByName3;
                long instanceClassId = heapInstance.getInstanceClassId();
                it = f74480a;
                if (linkedHashMap.get(Long.valueOf(instanceClassId)) != null) {
                    Object obj = linkedHashMap.get(Long.valueOf(instanceClassId));
                    obj.getClass();
                    pair = (Pair) obj;
                } else {
                    List listX = SequencesKt.x(heapInstance.getInstanceClass().getClassHierarchy());
                    HeapObject.HeapClass heapClass4 = (HeapObject.HeapClass) CollectionsKt.G(listX.size() - 2, listX);
                    long objectId = heapClass4 != null ? heapClass4.getObjectId() : 0L;
                    HeapObject.HeapClass heapClass5 = (HeapObject.HeapClass) CollectionsKt.G(listX.size() - 5, listX);
                    pair = new Pair(Long.valueOf(objectId), Long.valueOf(heapClass5 != null ? heapClass5.getObjectId() : 0L));
                    linkedHashMap.put(Long.valueOf(instanceClassId), pair);
                }
                long jLongValue = ((Number) pair.f71705b).longValue();
                long jLongValue2 = ((Number) pair.f71706c).longValue();
                if (heapClass3 == null || heapClass3.getObjectId() != jLongValue2) {
                    boolean z = false;
                    if (heapClass != null && heapClass.getObjectId() == jLongValue) {
                        HeapField heapField = heapInstance.get(heapClass.getName(), FRAGMENT_MANAGER_FIELD_NAME);
                        if (heapField != null && heapField.getValue().getAsObject() == null) {
                            HeapField heapField2 = heapInstance.get(heapClass.getName(), FRAGMENT_MCALLED_FIELD_NAME);
                            if (heapField2 != null) {
                                Boolean asBoolean = heapField2.getValue().getAsBoolean();
                                asBoolean.getClass();
                                if (asBoolean.booleanValue()) {
                                    z = true;
                                }
                            }
                            ObjectCounter objectCounterUpdateClassObjectCounterMap2 = updateClassObjectCounterMap(linkedHashMap2, instanceClassId, z);
                            MonitorLog.i(str3, "fragment name:" + heapInstance.getInstanceClassName() + " isLeak:" + z);
                            if (objectCounterUpdateClassObjectCounterMap2.getLeakCnt() <= 45 && z) {
                                this.mLeakingObjectIds.add(Long.valueOf(heapInstance.getObjectId()));
                                this.mLeakReasonTable.put(Long.valueOf(heapInstance.getObjectId()), "Fragment Leak");
                                MonitorLog.i(OOM_ANALYSIS_TAG, heapInstance.getInstanceClassName() + " objectId:" + heapInstance.getObjectId() + " recordSize:" + heapInstance.getRecordSize());
                            }
                        }
                    } else if (heapClass2 == null || heapClass2.getObjectId() != jLongValue) {
                        str = str3;
                        if ((heapClassFindClassByName4 != 0 && heapClassFindClassByName4.getObjectId() == jLongValue) || ((heapClassFindClassByName5 != 0 && heapClassFindClassByName5.getObjectId() == jLongValue) || (heapClassFindClassByName6 != null && heapClassFindClassByName6.getObjectId() == jLongValue))) {
                            updateClassObjectCounterMap(linkedHashMap2, instanceClassId, false);
                        }
                    } else {
                        HeapField heapField3 = heapInstance.get(BITMAP_CLASS_NAME, "mWidth");
                        HeapField heapField4 = heapInstance.get(BITMAP_CLASS_NAME, "mHeight");
                        heapField3.getClass();
                        Integer asInt = heapField3.getValue().getAsInt();
                        asInt.getClass();
                        int iIntValue = asInt.intValue();
                        heapField4.getClass();
                        Integer asInt2 = heapField4.getValue().getAsInt();
                        asInt2.getClass();
                        int iIntValue2 = asInt2.intValue();
                        int i2 = iIntValue * iIntValue2;
                        if (i2 >= DEFAULT_BIG_BITMAP) {
                            ObjectCounter objectCounterUpdateClassObjectCounterMap3 = updateClassObjectCounterMap(linkedHashMap2, instanceClassId, true);
                            MonitorLog.e(str3, "suspect leak! bitmap name: " + heapInstance.getInstanceClassName() + " width: " + iIntValue + " height:" + iIntValue2);
                            if (objectCounterUpdateClassObjectCounterMap3.getLeakCnt() <= 45) {
                                this.mLeakingObjectIds.add(Long.valueOf(heapInstance.getObjectId()));
                                str = str3;
                                this.mLeakReasonTable.put(Long.valueOf(heapInstance.getObjectId()), "Bitmap Size Over Threshold, " + iIntValue + 'x' + iIntValue2);
                                MonitorLog.i(OOM_ANALYSIS_TAG, heapInstance.getInstanceClassName() + " objectId:" + heapInstance.getObjectId() + " recordSize:" + heapInstance.getRecordSize());
                                HeapReport.LeakObject leakObject = new HeapReport.LeakObject();
                                leakObject.className = heapInstance.getInstanceClassName();
                                leakObject.size = String.valueOf(i2);
                                leakObject.extDetail = iIntValue + " x " + iIntValue2;
                                leakObject.objectId = convertObjectIdToHex(heapInstance.getObjectId() & BodyPartID.bodyIdMax);
                                this.mLeakModel.leakObjects.add(leakObject);
                            }
                        }
                    }
                } else {
                    HeapField heapField5 = heapInstance.get(ACTIVITY_CLASS_NAME, DESTROYED_FIELD_NAME);
                    heapField5.getClass();
                    HeapField heapField6 = heapInstance.get(ACTIVITY_CLASS_NAME, FINISHED_FIELD_NAME);
                    heapField6.getClass();
                    Boolean asBoolean2 = heapField5.getValue().getAsBoolean();
                    asBoolean2.getClass();
                    if (asBoolean2.booleanValue()) {
                        objectCounterUpdateClassObjectCounterMap = updateClassObjectCounterMap(linkedHashMap2, instanceClassId, true);
                        StringBuilder sb = new StringBuilder("activity name : ");
                        sb.append(heapInstance.getInstanceClassName());
                        sb.append(" mDestroyed:");
                        sb.append(heapField5.getValue().getAsBoolean());
                        sb.append(" mFinished:");
                        sb.append(heapField6.getValue().getAsBoolean());
                        sb.append(" objectId:");
                        sb.append(heapInstance.getObjectId() & BodyPartID.bodyIdMax);
                        sb.append(" objectId tt:");
                        sb.append(heapInstance.getObjectId());
                        sb.append(" recordSize:");
                        sb.append(heapInstance.getRecordSize());
                        sb.append(" objectIdOO:");
                        String string = Long.toString(heapInstance.getObjectId(), CharsKt.checkRadix(16));
                        string.getClass();
                        sb.append(string);
                        MonitorLog.i(str3, sb.toString());
                        if (objectCounterUpdateClassObjectCounterMap.getLeakCnt() <= 45) {
                            this.mLeakingObjectIds.add(Long.valueOf(heapInstance.getObjectId()));
                            this.mLeakReasonTable.put(Long.valueOf(heapInstance.getObjectId()), "Activity Leak");
                            MonitorLog.i(OOM_ANALYSIS_TAG, heapInstance.getInstanceClassName() + " objectId:" + heapInstance.getObjectId());
                        }
                    } else {
                        Boolean asBoolean3 = heapField6.getValue().getAsBoolean();
                        asBoolean3.getClass();
                        if (asBoolean3.booleanValue()) {
                            objectCounterUpdateClassObjectCounterMap = updateClassObjectCounterMap(linkedHashMap2, instanceClassId, true);
                            StringBuilder sb2 = new StringBuilder("activity name : ");
                            sb2.append(heapInstance.getInstanceClassName());
                            sb2.append(" mDestroyed:");
                            sb2.append(heapField5.getValue().getAsBoolean());
                            sb2.append(" mFinished:");
                            sb2.append(heapField6.getValue().getAsBoolean());
                            sb2.append(" objectId:");
                            sb2.append(heapInstance.getObjectId() & BodyPartID.bodyIdMax);
                            sb2.append(" objectId tt:");
                            sb2.append(heapInstance.getObjectId());
                            sb2.append(" recordSize:");
                            sb2.append(heapInstance.getRecordSize());
                            sb2.append(" objectIdOO:");
                            String string2 = Long.toString(heapInstance.getObjectId(), CharsKt.checkRadix(16));
                            string2.getClass();
                            sb2.append(string2);
                            MonitorLog.i(str3, sb2.toString());
                            if (objectCounterUpdateClassObjectCounterMap.getLeakCnt() <= 45) {
                                this.mLeakingObjectIds.add(Long.valueOf(heapInstance.getObjectId()));
                                this.mLeakReasonTable.put(Long.valueOf(heapInstance.getObjectId()), "Activity Leak");
                                MonitorLog.i(OOM_ANALYSIS_TAG, heapInstance.getInstanceClassName() + " objectId:" + heapInstance.getObjectId());
                            }
                        }
                    }
                }
                str = str3;
            }
            heapClassFindClassByName2 = heapClass;
            jCurrentTimeMillis = j2;
            heapClassFindClassByName = heapClass3;
            str4 = str5;
            heapClassFindClassByName3 = heapClass2;
            f74480a = it;
            heapClassFindClassByName5 = heapClassFindClassByName5;
            heapClassFindClassByName4 = heapClassFindClassByName4;
            str3 = str;
        }
        String str6 = str4;
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            long jLongValue3 = ((Number) entry.getKey()).longValue();
            ObjectCounter objectCounter = (ObjectCounter) entry.getValue();
            HeapReport.ClassInfo classInfo = new HeapReport.ClassInfo();
            HeapGraph heapGraph10 = this.mHeapGraph;
            if (heapGraph10 == null) {
                Intrinsics.h(str6);
                throw null;
            }
            HeapObject.HeapClass asClass = heapGraph10.findObjectById(jLongValue3).getAsClass();
            classInfo.className = asClass != null ? asClass.getName() : null;
            classInfo.instanceCount = String.valueOf(objectCounter.getAllCnt());
            MonitorLog.i(OOM_ANALYSIS_TAG, "leakClass.className: " + classInfo.className + " leakClass.objectCount: " + classInfo.instanceCount);
            this.mLeakModel.classInfos.add(classInfo);
        }
        HeapGraph heapGraph11 = this.mHeapGraph;
        if (heapGraph11 == null) {
            Intrinsics.h(str6);
            throw null;
        }
        for (HeapObject.HeapPrimitiveArray heapPrimitiveArray : heapGraph11.getPrimitiveArrays()) {
            int recordSize = heapPrimitiveArray.getRecordSize();
            if (recordSize >= 262144) {
                String arrayClassName = heapPrimitiveArray.getArrayClassName();
                String string3 = heapPrimitiveArray.getPrimitiveType().toString();
                StringBuilder sbR = fc.r(recordSize, "suspect leak! primitive arrayName:", arrayClassName, " size:", " typeName:");
                sbR.append(string3);
                sbR.append(", objectId:");
                sbR.append(heapPrimitiveArray.getObjectId() & BodyPartID.bodyIdMax);
                sbR.append(", hexObjectId:");
                sbR.append(convertObjectIdToHex(heapPrimitiveArray.getObjectId() & BodyPartID.bodyIdMax));
                sbR.append(" recordSize:");
                sbR.append(recordSize);
                sbR.append(", toString:");
                sbR.append(heapPrimitiveArray.toString());
                MonitorLog.e(OOM_ANALYSIS_TAG, sbR.toString());
                this.mLeakingObjectIds.add(Long.valueOf(heapPrimitiveArray.getObjectId()));
                this.mLeakReasonTable.put(Long.valueOf(heapPrimitiveArray.getObjectId()), "Primitive Array Size Over Threshold, " + recordSize);
                HeapReport.LeakObject leakObject2 = new HeapReport.LeakObject();
                leakObject2.className = arrayClassName;
                leakObject2.size = String.valueOf(recordSize);
                leakObject2.objectId = convertObjectIdToHex(heapPrimitiveArray.getObjectId() & BodyPartID.bodyIdMax);
                this.mLeakModel.leakObjects.add(leakObject2);
            }
        }
        HeapGraph heapGraph12 = this.mHeapGraph;
        if (heapGraph12 == null) {
            Intrinsics.h(str6);
            throw null;
        }
        for (HeapObject.HeapObjectArray heapObjectArray : heapGraph12.getObjectArrays()) {
            int recordSize2 = heapObjectArray.getRecordSize();
            if (recordSize2 >= 262144) {
                String arrayClassName2 = heapObjectArray.getArrayClassName();
                StringBuilder sbR2 = pq0.r("object arrayName:", arrayClassName2, " objectId:");
                sbR2.append(heapObjectArray.getObjectId());
                sbR2.append(" recordSize:");
                sbR2.append(recordSize2);
                MonitorLog.i(OOM_ANALYSIS_TAG, sbR2.toString());
                this.mLeakingObjectIds.add(Long.valueOf(heapObjectArray.getObjectId()));
                HeapReport.LeakObject leakObject3 = new HeapReport.LeakObject();
                leakObject3.className = arrayClassName2;
                leakObject3.size = String.valueOf(recordSize2);
                leakObject3.objectId = convertObjectIdToHex(heapObjectArray.getObjectId() & BodyPartID.bodyIdMax);
                this.mLeakModel.leakObjects.add(leakObject3);
            }
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        HeapReport.RunningInfo runningInfo = this.mLeakModel.runningInfo;
        if (runningInfo != null) {
            runningInfo.filterInstanceTime = String.valueOf((jCurrentTimeMillis2 - j2) / 1000.0f);
        }
        MonitorLog.i(OOM_ANALYSIS_TAG, "filterLeakingObjects time:" + (((jCurrentTimeMillis2 - j2) * 1.0f) / 1000.0f));
    }

    private final void findPathsToGcRoot() {
        String str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        HeapAnalyzer heapAnalyzer = new HeapAnalyzer(new OnAnalysisProgressListener() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.analysis.HeapAnalysisService$findPathsToGcRoot$heapAnalyzer$1
            public final void onAnalysisProgress(OnAnalysisProgressListener.Step step) {
                step.getClass();
                MonitorLog.i("OOMMonitor_HeapAnalysisService", "step:" + step.name() + ", leaking obj size:" + this.this$0.mLeakingObjectIds.size());
            }
        });
        HeapGraph heapGraph = this.mHeapGraph;
        if (heapGraph == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        HeapAnalyzer.LeaksAndUnreachableObjects leaksAndUnreachableObjectsFindLeaks = heapAnalyzer.findLeaks(new HeapAnalyzer.FindLeakInput(heapGraph, AndroidReferenceMatchers.Companion.getAppDefaults(), true, new ArrayList()), this.mLeakingObjectIds);
        List listComponent1 = leaksAndUnreachableObjectsFindLeaks.component1();
        List listComponent2 = leaksAndUnreachableObjectsFindLeaks.component2();
        leaksAndUnreachableObjectsFindLeaks.component3();
        HeapGraph heapGraph2 = this.mHeapGraph;
        if (heapGraph2 == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        Map<Long, Integer> mapMapNativeSizes = new AndroidNativeSizeMapper(heapGraph2).mapNativeSizes();
        HeapGraph heapGraph3 = this.mHeapGraph;
        if (heapGraph3 == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        ShallowSizeCalculator shallowSizeCalculator = new ShallowSizeCalculator(heapGraph3);
        AndroidMetadataExtractor androidMetadataExtractor = AndroidMetadataExtractor.INSTANCE;
        HeapGraph heapGraph4 = this.mHeapGraph;
        if (heapGraph4 == null) {
            Intrinsics.h("mHeapGraph");
            throw null;
        }
        Map mapExtractMetadata = androidMetadataExtractor.extractMetadata(heapGraph4);
        if (mapExtractMetadata != null) {
            for (Map.Entry entry : mapExtractMetadata.entrySet()) {
                MonitorLog.i(OOM_ANALYSIS_TAG, fc.i("OOMMmetadata ", (String) entry.getKey(), " == ", (String) entry.getValue()));
            }
            String str2 = (String) mapExtractMetadata.get("Heap total bytes");
            Integer numValueOf = str2 != null ? Integer.valueOf(Integer.parseInt(str2) + calcAllNativeSize(mapMapNativeSizes)) : null;
            MonitorLog.i(OOM_ANALYSIS_TAG, "totalNativeCount:" + calcAllNativeSize(mapMapNativeSizes) + ", heapMetaData:" + ((String) mapExtractMetadata.get("Heap total bytes")));
            HeapReport.RunningInfo runningInfo = this.mLeakModel.runningInfo;
            runningInfo.getClass();
            runningInfo.heapMetaData = String.valueOf(numValueOf);
        }
        MonitorLog.i(OOM_ANALYSIS_TAG, "---------------------------Application Leak---------------------------------------");
        MonitorLog.i(OOM_ANALYSIS_TAG, "ApplicationLeak size:" + listComponent1.size());
        Iterator it = listComponent1.iterator();
        while (true) {
            String str3 = ", referenceType:";
            long j2 = jCurrentTimeMillis;
            Iterator it2 = it;
            List list = listComponent2;
            if (!it.hasNext()) {
                String str4 = ", declaredClassName:";
                ShallowSizeCalculator shallowSizeCalculator2 = shallowSizeCalculator;
                Map<Long, Integer> map = mapMapNativeSizes;
                MonitorLog.i(OOM_ANALYSIS_TAG, "=======================================================================");
                MonitorLog.i(OOM_ANALYSIS_TAG, "----------------------------Library Leak--------------------------------------");
                MonitorLog.i(OOM_ANALYSIS_TAG, "LibraryLeak size:" + list.size());
                Iterator it3 = list.iterator();
                if (it3.hasNext()) {
                    LibraryLeak libraryLeak = (LibraryLeak) it3.next();
                    MonitorLog.i(OOM_ANALYSIS_TAG, "description:" + libraryLeak.getDescription() + ", shortDescription:" + libraryLeak.getShortDescription() + ", pattern:" + libraryLeak.getPattern().toString());
                    LeakTrace leakTrace = (LeakTrace) libraryLeak.getLeakTraces().get(0);
                    LeakTrace.GcRootType gcRootTypeComponent1 = leakTrace.component1();
                    List listComponent3 = leakTrace.component2();
                    LeakTraceObject leakTraceObjectComponent3 = leakTrace.component3();
                    String description = gcRootTypeComponent1.getDescription();
                    Object[] array = leakTraceObjectComponent3.getLabels().toArray(new String[0]);
                    if (array == null) {
                        r81.d("null cannot be cast to non-null type kotlin.Array<T>");
                        return;
                    }
                    leakTraceObjectComponent3.setLeakingStatusReason(String.valueOf(this.mLeakReasonTable.get(Long.valueOf(leakTraceObjectComponent3.getObjectId()))));
                    StringBuilder sbR = pq0.r("GC Root:", description, ", leakClazz:");
                    sbR.append(leakTraceObjectComponent3.getClassName());
                    sbR.append(", labels:");
                    String string = Arrays.toString((String[]) array);
                    string.getClass();
                    sbR.append(string);
                    sbR.append(", leaking reason:");
                    sbR.append(leakTraceObjectComponent3.getLeakingStatusReason());
                    sbR.append(", leaking obj:");
                    sbR.append(leakTraceObjectComponent3.getObjectId() & BodyPartID.bodyIdMax);
                    MonitorLog.i(OOM_ANALYSIS_TAG, sbR.toString());
                    HeapReport.GCPath gCPath = new HeapReport.GCPath();
                    gCPath.instanceCount = Integer.valueOf(libraryLeak.getLeakTraces().size());
                    gCPath.leakReason = leakTraceObjectComponent3.getLeakingStatusReason();
                    gCPath.leakObjectId = convertObjectIdToHex(leakTraceObjectComponent3.getObjectId() & BodyPartID.bodyIdMax);
                    gCPath.signature = libraryLeak.getSignature();
                    gCPath.gcRoot = description;
                    this.mLeakModel.gcPaths.add(gCPath);
                    Iterator it4 = listComponent3.iterator();
                    while (it4.hasNext()) {
                        LeakTraceReference leakTraceReference = (LeakTraceReference) it4.next();
                        String className = leakTraceReference.getOriginObject().getClassName();
                        String referenceName = leakTraceReference.getReferenceName();
                        String referenceDisplayName = leakTraceReference.getReferenceDisplayName();
                        String referenceGenericName = leakTraceReference.getReferenceGenericName();
                        String string2 = leakTraceReference.getReferenceType().toString();
                        String owningClassName = leakTraceReference.getOwningClassName();
                        StringBuilder sbS = fc.s("clazz:", className, ", referenceName:", referenceName, ", referenceDisplayName:");
                        Iterator it5 = it4;
                        cj.C(sbS, referenceDisplayName, ", referenceGenericName:", referenceGenericName, ", referenceType:");
                        String str5 = str4;
                        MonitorLog.i(OOM_ANALYSIS_TAG, d21.p(sbS, string2, str5, owningClassName));
                        HeapReport.GCPath.PathItem pathItem = new HeapReport.GCPath.PathItem();
                        pathItem.reference = StringsKt.P(referenceDisplayName, "[", false) ? className : className + JwtParser.SEPARATOR_CHAR + referenceDisplayName;
                        pathItem.referenceType = string2;
                        pathItem.declaredClass = owningClassName;
                        Integer retainedObjectCount = leakTraceReference.getOriginObject().getRetainedObjectCount();
                        pathItem.retainedObjectCount = retainedObjectCount != null ? retainedObjectCount.intValue() : 0;
                        Integer retainedHeapByteSize = leakTraceReference.getOriginObject().getRetainedHeapByteSize();
                        pathItem.retainedHeapByteSize = retainedHeapByteSize != null ? retainedHeapByteSize.intValue() : 0;
                        pathItem.referenceId = convertObjectIdToHex(leakTraceReference.getOriginObject().getObjectId() & BodyPartID.bodyIdMax);
                        pathItem.shallowSize = calcuShallowSize(leakTraceReference.getOriginObject().getObjectId(), map, shallowSizeCalculator2);
                        gCPath.path.add(pathItem);
                        str4 = str5;
                        it4 = it5;
                    }
                    for (LeakTrace leakTrace2 : libraryLeak.getLeakTraces()) {
                        List<HeapReport.GCPath.PathItem> list2 = gCPath.selfTracePath;
                        HeapReport.GCPath.PathItem pathItem2 = new HeapReport.GCPath.PathItem();
                        pathItem2.reference = leakTrace2.getLeakingObject().getClassName();
                        pathItem2.referenceType = leakTrace2.getLeakingObject().getTypeName();
                        Integer retainedObjectCount2 = leakTrace2.getLeakingObject().getRetainedObjectCount();
                        pathItem2.retainedObjectCount = retainedObjectCount2 != null ? retainedObjectCount2.intValue() : 0;
                        Integer retainedHeapByteSize2 = leakTrace2.getLeakingObject().getRetainedHeapByteSize();
                        pathItem2.retainedHeapByteSize = retainedHeapByteSize2 != null ? retainedHeapByteSize2.intValue() : 0;
                        pathItem2.referenceId = convertObjectIdToHex(leakTrace2.getLeakingObject().getObjectId() & BodyPartID.bodyIdMax);
                        pathItem2.shallowSize = calcuShallowSize(leakTrace2.getLeakingObject().getObjectId(), map, shallowSizeCalculator2);
                        list2.add(pathItem2);
                    }
                    str = "=======================================================================";
                } else {
                    str = "=======================================================================";
                }
                MonitorLog.i(OOM_ANALYSIS_TAG, str);
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                HeapReport.RunningInfo runningInfo2 = this.mLeakModel.runningInfo;
                runningInfo2.getClass();
                float f2 = (jCurrentTimeMillis2 - j2) / 1000.0f;
                runningInfo2.findGCPathTime = String.valueOf(f2);
                MonitorLog.i(OOM_ANALYSIS_TAG, "findPathsToGcRoot cost time: " + f2);
                return;
            }
            ApplicationLeak applicationLeak = (ApplicationLeak) it2.next();
            String str6 = "[";
            MonitorLog.i(OOM_ANALYSIS_TAG, "shortDescription:" + applicationLeak.getShortDescription() + ", signature:" + applicationLeak.getSignature() + " same leak size:" + applicationLeak.getLeakTraces().size() + " totalRetainedHeapByteSize:" + applicationLeak.getTotalRetainedHeapByteSize() + " totalRetainedCount:" + applicationLeak.getTotalRetainedObjectCount());
            LeakTrace leakTrace3 = (LeakTrace) applicationLeak.getLeakTraces().get(0);
            LeakTrace.GcRootType gcRootTypeComponent2 = leakTrace3.component1();
            List listComponent4 = leakTrace3.component2();
            LeakTraceObject leakTraceObjectComponent4 = leakTrace3.component3();
            String description2 = gcRootTypeComponent2.getDescription();
            Map<Long, Integer> map2 = mapMapNativeSizes;
            ShallowSizeCalculator shallowSizeCalculator3 = shallowSizeCalculator;
            Object[] array2 = leakTraceObjectComponent4.getLabels().toArray(new String[0]);
            if (array2 == null) {
                r81.d("null cannot be cast to non-null type kotlin.Array<T>");
                return;
            }
            leakTraceObjectComponent4.setLeakingStatusReason(String.valueOf(this.mLeakReasonTable.get(Long.valueOf(leakTraceObjectComponent4.getObjectId()))));
            StringBuilder sbR2 = pq0.r("GC Root:", description2, ", leakObjClazz:");
            sbR2.append(leakTraceObjectComponent4.getClassName());
            sbR2.append(", leakObjType:");
            sbR2.append(leakTraceObjectComponent4.getTypeName());
            sbR2.append(", labels:");
            String string3 = Arrays.toString((String[]) array2);
            string3.getClass();
            sbR2.append(string3);
            sbR2.append(", retainedHeapByteSize:");
            sbR2.append(leakTraceObjectComponent4.getRetainedHeapByteSize());
            sbR2.append(", retainedObjectCount:");
            sbR2.append(leakTraceObjectComponent4.getRetainedObjectCount());
            sbR2.append(", leaking reason:");
            sbR2.append(leakTraceObjectComponent4.getLeakingStatusReason());
            sbR2.append(", leaking obj:");
            sbR2.append(leakTraceObjectComponent4.getObjectId() & BodyPartID.bodyIdMax);
            MonitorLog.i(OOM_ANALYSIS_TAG, sbR2.toString());
            HeapReport.GCPath gCPath2 = new HeapReport.GCPath();
            gCPath2.instanceCount = Integer.valueOf(applicationLeak.getLeakTraces().size());
            gCPath2.leakReason = leakTraceObjectComponent4.getLeakingStatusReason();
            gCPath2.leakObjectId = convertObjectIdToHex(leakTraceObjectComponent4.getObjectId() & BodyPartID.bodyIdMax);
            gCPath2.gcRoot = description2;
            gCPath2.signature = applicationLeak.getSignature();
            this.mLeakModel.gcPaths.add(gCPath2);
            Iterator it6 = listComponent4.iterator();
            while (it6.hasNext()) {
                LeakTraceReference leakTraceReference2 = (LeakTraceReference) it6.next();
                String referenceName2 = leakTraceReference2.getReferenceName();
                String className2 = leakTraceReference2.getOriginObject().getClassName();
                String referenceDisplayName2 = leakTraceReference2.getReferenceDisplayName();
                String referenceGenericName2 = leakTraceReference2.getReferenceGenericName();
                String string4 = leakTraceReference2.getReferenceType().toString();
                String owningClassName2 = leakTraceReference2.getOwningClassName();
                StringBuilder sbS2 = fc.s("clazz:", className2, ", referenceName:", referenceName2, ", referenceDisplayName:");
                cj.C(sbS2, referenceDisplayName2, ", referenceGenericName:", referenceGenericName2, str3);
                sbS2.append(string4);
                sbS2.append(", reference.originObject.retainedSize:");
                sbS2.append(leakTraceReference2.getOriginObject().getRetainedHeapByteSize());
                sbS2.append(", reference.originObject.ObjectCount:");
                sbS2.append(leakTraceReference2.getOriginObject().getRetainedObjectCount());
                sbS2.append(", shallowSize:");
                Iterator it7 = it6;
                ShallowSizeCalculator shallowSizeCalculator4 = shallowSizeCalculator3;
                String str7 = str3;
                Map<Long, Integer> map3 = map2;
                sbS2.append(calcuShallowSize(leakTraceReference2.getOriginObject().getObjectId(), map3, shallowSizeCalculator4));
                sbS2.append(", declaredClassName:");
                sbS2.append(owningClassName2);
                MonitorLog.i(OOM_ANALYSIS_TAG, sbS2.toString());
                HeapReport.GCPath.PathItem pathItem3 = new HeapReport.GCPath.PathItem();
                String str8 = str6;
                if (!StringsKt.P(referenceDisplayName2, str8, false)) {
                    className2 = className2 + JwtParser.SEPARATOR_CHAR + referenceDisplayName2;
                }
                pathItem3.reference = className2;
                pathItem3.referenceType = string4;
                pathItem3.declaredClass = owningClassName2;
                Integer retainedObjectCount3 = leakTraceReference2.getOriginObject().getRetainedObjectCount();
                pathItem3.retainedObjectCount = retainedObjectCount3 != null ? retainedObjectCount3.intValue() : 0;
                Integer retainedHeapByteSize3 = leakTraceReference2.getOriginObject().getRetainedHeapByteSize();
                pathItem3.retainedHeapByteSize = retainedHeapByteSize3 != null ? retainedHeapByteSize3.intValue() : 0;
                pathItem3.referenceId = convertObjectIdToHex(leakTraceReference2.getOriginObject().getObjectId() & BodyPartID.bodyIdMax);
                pathItem3.shallowSize = calcuShallowSize(leakTraceReference2.getOriginObject().getObjectId(), map3, shallowSizeCalculator4);
                gCPath2.path.add(pathItem3);
                shallowSizeCalculator3 = shallowSizeCalculator4;
                str3 = str7;
                str6 = str8;
                map2 = map3;
                it6 = it7;
            }
            ShallowSizeCalculator shallowSizeCalculator5 = shallowSizeCalculator3;
            Map<Long, Integer> map4 = map2;
            for (LeakTrace leakTrace4 : applicationLeak.getLeakTraces()) {
                List<HeapReport.GCPath.PathItem> list3 = gCPath2.selfTracePath;
                HeapReport.GCPath.PathItem pathItem4 = new HeapReport.GCPath.PathItem();
                pathItem4.reference = leakTrace4.getLeakingObject().getClassName();
                pathItem4.referenceType = leakTrace4.getLeakingObject().getTypeName();
                Integer retainedObjectCount4 = leakTrace4.getLeakingObject().getRetainedObjectCount();
                pathItem4.retainedObjectCount = retainedObjectCount4 != null ? retainedObjectCount4.intValue() : 0;
                Integer retainedHeapByteSize4 = leakTrace4.getLeakingObject().getRetainedHeapByteSize();
                pathItem4.retainedHeapByteSize = retainedHeapByteSize4 != null ? retainedHeapByteSize4.intValue() : 0;
                pathItem4.referenceId = convertObjectIdToHex(leakTrace4.getLeakingObject().getObjectId() & BodyPartID.bodyIdMax);
                pathItem4.shallowSize = calcuShallowSize(leakTrace4.getLeakingObject().getObjectId(), map4, shallowSizeCalculator5);
                list3.add(pathItem4);
            }
            mapMapNativeSizes = map4;
            shallowSizeCalculator = shallowSizeCalculator5;
            jCurrentTimeMillis = j2;
            it = it2;
            listComponent2 = list;
        }
    }

    private final ObjectCounter updateClassObjectCounterMap(Map<Long, ObjectCounter> classObCountMap, long instanceClassId, boolean isLeak) {
        ObjectCounter objectCounter = classObCountMap.get(Long.valueOf(instanceClassId));
        if (objectCounter == null) {
            objectCounter = new ObjectCounter();
            classObCountMap.put(Long.valueOf(instanceClassId), objectCounter);
        }
        objectCounter.setAllCnt(objectCounter.getAllCnt() + 1);
        if (isLeak) {
            objectCounter.setLeakCnt(objectCounter.getLeakCnt() + 1);
        }
        return objectCounter;
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        Object failure;
        Object failure2;
        Object failure3;
        MonitorLog.i(TAG, "onHandleIntent happened");
        ResultReceiver resultReceiver = intent != null ? (ResultReceiver) intent.getParcelableExtra("RESULT_RECEIVER") : null;
        String stringExtra = intent != null ? intent.getStringExtra("HPROF_FILE") : null;
        String stringExtra2 = intent != null ? intent.getStringExtra("JSON_FILE") : null;
        OOMFileManager.init(intent != null ? intent.getStringExtra("ROOT_PATH") : null);
        try {
            Result.Companion companion = Result.INSTANCE;
            buildIndex(stringExtra);
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            thA.printStackTrace();
            MonitorLog.e(OOM_ANALYSIS_EXCEPTION_TAG, "build index exception " + thA.getMessage(), true);
            if (resultReceiver != null) {
                resultReceiver.send(1002, null);
                return;
            }
            return;
        }
        buildJson(intent);
        try {
            filterLeakingObjects();
            failure2 = Unit.f71739a;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure2 = new Result.Failure(th2);
        }
        Throwable thA2 = Result.a(failure2);
        if (thA2 != null) {
            MonitorLog.i(OOM_ANALYSIS_EXCEPTION_TAG, "find leak objects exception " + thA2.getMessage(), true);
            if (resultReceiver != null) {
                resultReceiver.send(1002, null);
                return;
            }
            return;
        }
        try {
            findPathsToGcRoot();
            failure3 = Unit.f71739a;
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            failure3 = new Result.Failure(th3);
        }
        Throwable thA3 = Result.a(failure3);
        if (thA3 == null) {
            fillJsonFile(stringExtra2);
            if (resultReceiver != null) {
                resultReceiver.send(1001, null);
            }
            System.exit(0);
            return;
        }
        thA3.printStackTrace();
        MonitorLog.i(OOM_ANALYSIS_EXCEPTION_TAG, "find gc path exception " + thA3.getMessage(), true);
        if (resultReceiver != null) {
            resultReceiver.send(1002, null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001&B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JB\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;", "", "()V", "ACTIVITY_CLASS_NAME", "", "ANDROIDX_FRAGMENT_CLASS_NAME", "BITMAP_CLASS_NAME", "DEFAULT_BIG_BITMAP", "", "DEFAULT_BIG_OBJECT_ARRAY", "DEFAULT_BIG_PRIMITIVE_ARRAY", "DESTROYED_FIELD_NAME", "FINISHED_FIELD_NAME", "FRAGMENT_MANAGER_FIELD_NAME", "FRAGMENT_MCALLED_FIELD_NAME", "NATIVE_ALLOCATION_CLASS_NAME", "NATIVE_ALLOCATION_CLEANER_THUNK_CLASS_NAME", "NATIVE_FRAGMENT_CLASS_NAME", "OOM_ANALYSIS_EXCEPTION_TAG", "OOM_ANALYSIS_TAG", "SAME_CLASS_LEAK_OBJECT_PATH_THRESHOLD", "SUPPORT_FRAGMENT_CLASS_NAME", "TAG", "WINDOW_CLASS_NAME", "startAnalysisService", "", MvelScriptManager.VAR_CONTEXT, "Landroid/app/Application;", "mForegroundPendingRunnables", "", "Ljava/lang/Runnable;", "hprofFile", "Ljava/io/File;", "jsonFile", "extraData", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisExtraData;", "resultCallBack", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;", "Info", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public static final class Companion {

        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0086\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info;", "", "Companion", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
        @Retention(RetentionPolicy.RUNTIME)
        public @interface Info {
            public static final String CURRENT_PAGE = "CURRENT_PAGE";

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = Companion.$$INSTANCE;
            public static final String DEVICE_AVA_MEM = "DEVICE_AVA_MEM";
            public static final String DEVICE_MAX_MEM = "DEVICE_MAX_MEM";
            public static final String FD = "FD";
            public static final String HPROF_FILE = "HPROF_FILE";
            public static final String JAVA_MAX_MEM = "JAVA_MAX_MEM";
            public static final String JAVA_USED_MEM = "JAVA_USED_MEM";
            public static final String JSON_FILE = "JSON_FILE";
            public static final String MANUFACTURE = "MANUFACTURE";
            public static final String MODEL = "MODEL";
            public static final String PSS = "PSS";
            public static final String REASON = "REASON";
            public static final String RESULT_RECEIVER = "RESULT_RECEIVER";
            public static final String ROOT_PATH = "ROOT_PATH";
            public static final String RSS = "RSS";
            public static final String SDK = "SDK";
            public static final String THREAD = "THREAD";
            public static final String TIME = "TIME";
            public static final String USAGE_TIME = "USAGE_TIME";
            public static final String VSS = "VSS";

            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$Info$Companion;", "", "()V", "CURRENT_PAGE", "", "DEVICE_AVA_MEM", "DEVICE_MAX_MEM", "FD", "HPROF_FILE", "JAVA_MAX_MEM", "JAVA_USED_MEM", "JSON_FILE", "MANUFACTURE", "MODEL", "PSS", "REASON", "RESULT_RECEIVER", "ROOT_PATH", "RSS", "SDK", "THREAD", "TIME", "USAGE_TIME", "VSS", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
            public static final class Companion {
                static final /* synthetic */ Companion $$INSTANCE = new Companion();
                public static final String CURRENT_PAGE = "CURRENT_PAGE";
                public static final String DEVICE_AVA_MEM = "DEVICE_AVA_MEM";
                public static final String DEVICE_MAX_MEM = "DEVICE_MAX_MEM";
                public static final String FD = "FD";
                public static final String HPROF_FILE = "HPROF_FILE";
                public static final String JAVA_MAX_MEM = "JAVA_MAX_MEM";
                public static final String JAVA_USED_MEM = "JAVA_USED_MEM";
                public static final String JSON_FILE = "JSON_FILE";
                public static final String MANUFACTURE = "MANUFACTURE";
                public static final String MODEL = "MODEL";
                public static final String PSS = "PSS";
                public static final String REASON = "REASON";
                public static final String RESULT_RECEIVER = "RESULT_RECEIVER";
                public static final String ROOT_PATH = "ROOT_PATH";
                public static final String RSS = "RSS";
                public static final String SDK = "SDK";
                public static final String THREAD = "THREAD";
                public static final String TIME = "TIME";
                public static final String USAGE_TIME = "USAGE_TIME";
                public static final String VSS = "VSS";

                private Companion() {
                }
            }
        }

        private Companion() {
        }

        public final void startAnalysisService(final Application context, List<Runnable> mForegroundPendingRunnables, File hprofFile, File jsonFile, AnalysisExtraData extraData, AnalysisReceiver.ResultCallBack resultCallBack) {
            context.getClass();
            mForegroundPendingRunnables.getClass();
            extraData.getClass();
            MonitorLog.i(HeapAnalysisService.TAG, "startAnalysisService");
            AnalysisReceiver analysisReceiver = new AnalysisReceiver();
            analysisReceiver.setResultCallBack(resultCallBack);
            final Intent intent = new Intent(context, (Class<?>) HeapAnalysisService.class);
            if (hprofFile != null) {
                intent.putExtra("HPROF_FILE", hprofFile.getCanonicalPath());
            }
            if (jsonFile != null) {
                intent.putExtra("JSON_FILE", jsonFile.getCanonicalPath());
            }
            intent.putExtra("ROOT_PATH", OOMFileManager.INSTANCE.getRootDir().getAbsolutePath());
            intent.putExtra("RESULT_RECEIVER", analysisReceiver);
            SizeUnit.BYTE r9 = SizeUnit.BYTE.INSTANCE;
            SystemInfo systemInfo = SystemInfo.INSTANCE;
            intent.putExtra("JAVA_MAX_MEM", String.valueOf(r9.toMB(systemInfo.getJavaHeap().getMax())));
            intent.putExtra("JAVA_USED_MEM", String.valueOf(r9.toMB(systemInfo.getJavaHeap().getTotal() - systemInfo.getJavaHeap().getFree())));
            SizeUnit.KB kb = SizeUnit.KB.INSTANCE;
            intent.putExtra("DEVICE_MAX_MEM", String.valueOf(kb.toMB(systemInfo.getMemInfo().getTotalInKb())));
            intent.putExtra("DEVICE_AVA_MEM", String.valueOf(kb.toMB(systemInfo.getMemInfo().getAvailableInKb())));
            File[] fileArrListFiles = new File("/proc/self/fd").listFiles();
            intent.putExtra("FD", String.valueOf(fileArrListFiles != null ? fileArrListFiles.length : 0));
            long pss = Debug.getPss();
            MonitorLog.i(HeapAnalysisService.TAG, d21.g(pss, "startAnalysisService get Pss:"));
            intent.putExtra("PSS", String.valueOf(kb.toMB(pss)) + "mb");
            intent.putExtra("VSS", String.valueOf(kb.toMB(systemInfo.getProcStatus().getVssInKb())) + "mb");
            intent.putExtra("RSS", String.valueOf(kb.toMB(systemInfo.getProcStatus().getRssInKb())) + "mb");
            intent.putExtra("THREAD", String.valueOf(systemInfo.getProcStatus().getThread()));
            intent.putExtra("MANUFACTURE", Build.MANUFACTURER.toString());
            intent.putExtra("SDK", String.valueOf(Build.VERSION.SDK_INT));
            intent.putExtra("MODEL", Build.MODEL.toString());
            intent.putExtra("TIME", new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss_SSS", Locale.CHINESE).format(new Date()));
            if (extraData.getReason() != null) {
                intent.putExtra("REASON", extraData.getReason());
            }
            if (extraData.getCurrentPage() != null) {
                intent.putExtra("CURRENT_PAGE", extraData.getCurrentPage());
            }
            if (extraData.getUsageSeconds() != null) {
                intent.putExtra("USAGE_TIME", extraData.getUsageSeconds());
            }
            if (!Monitor_ApplicationKt.isForeground(context)) {
                mForegroundPendingRunnables.add(new Runnable() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.analysis.HeapAnalysisService$Companion$startAnalysisService$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            context.startService(intent);
                        } catch (Throwable th) {
                            MonitorLog.i("OOMMonitor_HeapAnalysisService", "startService failed, exception is " + th.getMessage());
                        }
                    }
                });
                MonitorLog.i(HeapAnalysisService.TAG, "startService failed, context is not foreground");
                return;
            }
            try {
                MonitorLog.i(HeapAnalysisService.TAG, "startService result is" + context.startService(intent));
            } catch (Throwable th) {
                MonitorLog.i(HeapAnalysisService.TAG, "startService failed, exception is " + th.getMessage());
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
