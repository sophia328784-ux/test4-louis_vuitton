package com.dynatrace.android.agent.mixed;

import android.app.Application;
import com.dynatrace.agent.OneAgentConfiguration;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.di.CoreComponent;
import com.dynatrace.agent.di.SecondGenServiceLocator;
import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.CommunicationManager;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.communication.ServerConfigurationListener;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import okhttp3.Call;

/* JADX INFO: loaded from: classes2.dex */
public class AgentServiceLocatorImpl implements AgentServiceLocator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OneAgentConfiguration f27564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f27565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Application f27566c;
    public final Call.Factory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SecondGenServiceLocator f27567e;

    /* JADX INFO: renamed from: com.dynatrace.android.agent.mixed.AgentServiceLocatorImpl$1, reason: invalid class name */
    class AnonymousClass1 implements ServerConfigurationListener {
        @Override // com.dynatrace.android.agent.communication.ServerConfigurationListener
        public final void a(ServerConfiguration serverConfiguration) {
            CommunicationManager communicationManager = Core.f27288k;
            communicationManager.getClass();
            communicationManager.c(Session.a(), serverConfiguration, false);
            if (communicationManager.v && communicationManager.m != null && communicationManager.n != null) {
                Utility.b("config received from OneAgent, notify connection state: connected == true, restartTimer == false");
                communicationManager.n.c(true);
            }
            communicationManager.v = false;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0012  */
        @Override // com.dynatrace.android.agent.communication.ServerConfigurationListener
        public final void b(AgentState agentState) {
            boolean z;
            CommunicationManager communicationManager = Core.f27288k;
            communicationManager.f27267h = agentState;
            ServerConfiguration serverConfiguration = AdkSettings.f27249k.g;
            if (agentState instanceof AgentState.Enabled) {
                z = serverConfiguration.g == 1;
            }
            communicationManager.f(z);
            Utility.b("applied AgentState: " + agentState + " mUemActive: " + communicationManager.f27270k.get());
        }
    }

    public AgentServiceLocatorImpl(OneAgentConfiguration oneAgentConfiguration, TimeProvider timeProvider, Application application, Call.Factory factory, SecondGenServiceLocator secondGenServiceLocator) {
        this.f27564a = oneAgentConfiguration;
        this.f27565b = timeProvider;
        this.f27566c = application;
        this.d = factory;
        this.f27567e = secondGenServiceLocator;
    }

    public final void a(ConfigurationPublisher configurationPublisher) {
        StringBuilder sb = new StringBuilder("initialize OneAgent, oneAgentConfiguration: ");
        OneAgentConfiguration oneAgentConfiguration = this.f27564a;
        sb.append(oneAgentConfiguration);
        sb.append(" httpFactory: ");
        sb.append(this.d);
        Utility.b(sb.toString());
        CoreComponent.Holder holder = CoreComponent.f26702k;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        holder.getClass();
        oneAgentConfiguration.getClass();
        TimeProvider timeProvider = this.f27565b;
        timeProvider.getClass();
        Application application = this.f27566c;
        application.getClass();
        SecondGenServiceLocator secondGenServiceLocator = this.f27567e;
        secondGenServiceLocator.getClass();
        configurationPublisher.getClass();
        if (CoreComponent.l == null) {
            CoreComponent.l = new CoreComponent(oneAgentConfiguration, timeProvider, anonymousClass1, this.d, application, secondGenServiceLocator, configurationPublisher, null);
        }
    }
}
