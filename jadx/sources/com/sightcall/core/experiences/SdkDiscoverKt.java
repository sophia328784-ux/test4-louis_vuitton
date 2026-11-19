package com.sightcall.core.experiences;

import com.sightcall.core.experiences.wrapper.DebugWrapper;
import com.sightcall.core.experiences.wrapper.DigitalFlowWrapper;
import com.sightcall.core.experiences.wrapper.FeatureWrapper;
import com.sightcall.core.experiences.wrapper.LoginWrapper;
import com.sightcall.core.experiences.wrapper.VisualAssistanceWrapper;
import com.sightcall.universal.VisualAssistanceWrapperImpl;
import java.lang.reflect.Constructor;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\u0000\u001a\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0000\u001a\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0000\u001a\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0000\u001a\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0000¨\u0006\n"}, d2 = {"initDigitalFlow", "Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;", "initVisualAssistanceWrapper", "Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;", "initFeatureWrapper", "Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;", "initDebugWrapper", "Lcom/sightcall/core/experiences/wrapper/DebugWrapper;", "initLoginWrapper", "Lcom/sightcall/core/experiences/wrapper/LoginWrapper;", "core_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class SdkDiscoverKt {
    public static final DebugWrapper initDebugWrapper() {
        try {
            Constructor<?> declaredConstructor = Class.forName("com.sightcall.extras.debug.DebugWrapperImpl").getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            Object objNewInstance = declaredConstructor.newInstance(null);
            objNewInstance.getClass();
            return (DebugWrapper) objNewInstance;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final DigitalFlowWrapper initDigitalFlow() {
        try {
            Constructor<?> declaredConstructor = Class.forName("com.sightcall.digitalflow.DigitalFlowWrapperImpl").getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            Object objNewInstance = declaredConstructor.newInstance(null);
            objNewInstance.getClass();
            return (DigitalFlowWrapper) objNewInstance;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final FeatureWrapper initFeatureWrapper() {
        try {
            Constructor<?> declaredConstructor = Class.forName("com.sightcall.agent.FeatureWrapperImpl").getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            Object objNewInstance = declaredConstructor.newInstance(null);
            objNewInstance.getClass();
            return (FeatureWrapper) objNewInstance;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final LoginWrapper initLoginWrapper() {
        try {
            Constructor<?> declaredConstructor = Class.forName("com.sightcall.login.LoginWrapperImpl").getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            Object objNewInstance = declaredConstructor.newInstance(null);
            objNewInstance.getClass();
            return (LoginWrapper) objNewInstance;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final VisualAssistanceWrapper initVisualAssistanceWrapper() {
        try {
            Constructor declaredConstructor = VisualAssistanceWrapperImpl.class.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            Object objNewInstance = declaredConstructor.newInstance(null);
            objNewInstance.getClass();
            return (VisualAssistanceWrapper) objNewInstance;
        } catch (Exception unused) {
            return null;
        }
    }
}
