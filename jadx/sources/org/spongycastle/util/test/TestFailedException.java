package org.spongycastle.util.test;

/* JADX INFO: loaded from: classes5.dex */
public class TestFailedException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TestResult f78275b;

    public TestFailedException(TestResult testResult) {
        this.f78275b = testResult;
    }
}
