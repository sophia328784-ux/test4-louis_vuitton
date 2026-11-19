package com.google.common.base;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Splitter.Strategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f33508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f33509b;

    public /* synthetic */ a(Object obj, int i2) {
        this.f33508a = i2;
        this.f33509b = obj;
    }

    @Override // com.google.common.base.Splitter.Strategy
    public final Iterator a(final Splitter splitter, final CharSequence charSequence) {
        int i2 = this.f33508a;
        Object obj = this.f33509b;
        switch (i2) {
            case 0:
                final String str = (String) obj;
                return 
                /*  JADX ERROR: Method code generation error
                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0016: RETURN 
                      (wrap com.google.common.base.Splitter$SplittingIterator:0x0013: CONSTRUCTOR 
                      (r2v0 'splitter' com.google.common.base.Splitter A[DONT_INLINE])
                      (r3v0 'charSequence' java.lang.CharSequence A[DONT_INLINE])
                      (r1v2 'str' java.lang.String A[DONT_INLINE])
                     A[MD:(com.google.common.base.Splitter, java.lang.CharSequence, java.lang.String):void (m), WRAPPED] call: com.google.common.base.Splitter.2.<init>(com.google.common.base.Splitter, java.lang.CharSequence, java.lang.String):void type: CONSTRUCTOR)
                     in method: com.google.common.base.a.a(com.google.common.base.Splitter, java.lang.CharSequence):java.util.Iterator, file: classes2.dex
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
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
                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: com.google.common.base.Splitter, state: NOT_LOADED
                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                    	... 21 more
                    */
                /*
                    this = this;
                    int r0 = r1.f33508a
                    java.lang.Object r1 = r1.f33509b
                    switch(r0) {
                        case 0: goto Lf;
                        default: goto L7;
                    }
                L7:
                    com.google.common.base.CharMatcher r1 = (com.google.common.base.CharMatcher) r1
                    com.google.common.base.Splitter$1 r0 = new com.google.common.base.Splitter$1
                    r0.<init>(r2, r3, r1)
                    return r0
                Lf:
                    java.lang.String r1 = (java.lang.String) r1
                    com.google.common.base.Splitter$2 r0 = new com.google.common.base.Splitter$2
                    r0.<init>(r2, r3, r1)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.a.a(com.google.common.base.Splitter, java.lang.CharSequence):java.util.Iterator");
            }
        }
