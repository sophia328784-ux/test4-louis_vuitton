package androidx.paging;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"paging-common_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class CachedPagingDataKt {
    public static final Flow a(ChannelFlowTransformLatest channelFlowTransformLatest, CoroutineScope coroutineScope) {
        coroutineScope.getClass();
        Flow flowA = SimpleChannelFlowKt.a(new FlowExtKt$simpleTransformLatest$1(channelFlowTransformLatest, new CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1(null, coroutineScope, null), null));
        CachedPagingDataKt$cachedIn$2 cachedPagingDataKt$cachedIn$2 = new CachedPagingDataKt$cachedIn$2(3, null);
        flowA.getClass();
        final Flow flowT = FlowKt.t(new FlowExtKt$simpleRunningReduce$1(flowA, cachedPagingDataKt$cachedIn$2, null));
        FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new CachedPagingDataKt$cachedIn$4(2, null), new Flow<PagingData<Object>>() { // from class: androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1

            /* JADX INFO: renamed from: androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "R", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f18548b;

                /* JADX INFO: renamed from: androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2", f = "CachedPagingData.kt", l = {223}, m = "emit")
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f18549b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f18550c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f18549b = obj;
                        this.f18550c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f18548b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f18550c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f18550c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f18549b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f18550c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        final MulticastedPagingData multicastedPagingData = (MulticastedPagingData) obj;
                        multicastedPagingData.getClass();
                        FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new MulticastedPagingData$asPagingData$1(multicastedPagingData, null), multicastedPagingData.d.f18526e), new MulticastedPagingData$asPagingData$2(multicastedPagingData, null));
                        PagingData pagingData = multicastedPagingData.f18645b;
                        PagingData pagingData2 = new PagingData(flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1, pagingData.f18845b, pagingData.f18846c, 
                        /*  JADX ERROR: Method code generation error
                            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x005b: CONSTRUCTOR (r9v2 'pagingData2' androidx.paging.PagingData) = 
                              (r3v1 'flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1' kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1)
                              (wrap androidx.paging.UiReceiver:0x0052: IGET (r2v4 'pagingData' androidx.paging.PagingData) A[WRAPPED] androidx.paging.PagingData.b androidx.paging.UiReceiver)
                              (wrap androidx.paging.HintReceiver:0x0054: IGET (r2v4 'pagingData' androidx.paging.PagingData) A[WRAPPED] androidx.paging.PagingData.c androidx.paging.HintReceiver)
                              (wrap kotlin.jvm.functions.Function0<androidx.paging.PageEvent$Insert<java.lang.Object>>:0x0058: CONSTRUCTOR (r8v1 'multicastedPagingData' androidx.paging.MulticastedPagingData A[DONT_INLINE]) A[MD:(androidx.paging.MulticastedPagingData):void (m), WRAPPED] call: androidx.paging.MulticastedPagingData$asPagingData$3.<init>(androidx.paging.MulticastedPagingData):void type: CONSTRUCTOR)
                             A[DECLARE_VAR, MD:(kotlinx.coroutines.flow.Flow<? extends androidx.paging.PageEvent<T>>, androidx.paging.UiReceiver, androidx.paging.HintReceiver, kotlin.jvm.functions.Function0<androidx.paging.PageEvent$Insert<T>>):void (m)] call: androidx.paging.PagingData.<init>(kotlinx.coroutines.flow.Flow, androidx.paging.UiReceiver, androidx.paging.HintReceiver, kotlin.jvm.functions.Function0):void type: CONSTRUCTOR in method: androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1.2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object, file: classes.dex
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: androidx.paging.MulticastedPagingData$asPagingData$3, state: NOT_LOADED
                            	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:782)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                            	... 21 more
                            */
                        /*
                            this = this;
                            boolean r0 = r9 instanceof androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r9
                            androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2$1 r0 = (androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.f18550c
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.f18550c = r1
                            goto L18
                        L13:
                            androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2$1 r0 = new androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2$1
                            r0.<init>(r9)
                        L18:
                            java.lang.Object r9 = r0.f18549b
                            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                            int r2 = r0.f18550c
                            r3 = 0
                            r4 = 1
                            if (r2 == 0) goto L2e
                            if (r2 != r4) goto L28
                            kotlin.ResultKt.b(r9)
                            goto L69
                        L28:
                            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                            defpackage.md.k(r7)
                            return r3
                        L2e:
                            kotlin.ResultKt.b(r9)
                            androidx.paging.MulticastedPagingData r8 = (androidx.paging.MulticastedPagingData) r8
                            r8.getClass()
                            androidx.paging.PagingData r9 = new androidx.paging.PagingData
                            androidx.paging.CachedPageEventFlow r2 = r8.d
                            kotlinx.coroutines.flow.Flow r2 = r2.f18526e
                            androidx.paging.MulticastedPagingData$asPagingData$1 r5 = new androidx.paging.MulticastedPagingData$asPagingData$1
                            r5.<init>(r8, r3)
                            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 r6 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1
                            r6.<init>(r5, r2)
                            androidx.paging.MulticastedPagingData$asPagingData$2 r2 = new androidx.paging.MulticastedPagingData$asPagingData$2
                            r2.<init>(r8, r3)
                            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 r3 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1
                            r3.<init>(r6, r2)
                            androidx.paging.PagingData r2 = r8.f18645b
                            androidx.paging.UiReceiver r5 = r2.f18845b
                            androidx.paging.HintReceiver r2 = r2.f18846c
                            androidx.paging.MulticastedPagingData$asPagingData$3 r6 = new androidx.paging.MulticastedPagingData$asPagingData$3
                            r6.<init>(r8)
                            r9.<init>(r3, r5, r2, r6)
                            r0.f18550c = r4
                            kotlinx.coroutines.flow.FlowCollector r7 = r7.f18548b
                            java.lang.Object r7 = r7.emit(r9, r0)
                            if (r7 != r1) goto L69
                            return r1
                        L69:
                            kotlin.Unit r7 = kotlin.Unit.f71739a
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object f(FlowCollector flowCollector, Continuation continuation) {
                    Object objF = flowT.f(new AnonymousClass2(flowCollector), continuation);
                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                }
            }), new CachedPagingDataKt$cachedIn$5(3, null));
            SharingStarted.f74985a.getClass();
            return FlowKt.z(flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1, coroutineScope, SharingStarted.Companion.f74988c, 1);
        }
    }
