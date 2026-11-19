.class public Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/mixed/AgentServiceLocator;


# instance fields
.field public final a:Lcom/dynatrace/agent/OneAgentConfiguration;

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final c:Landroid/app/Application;

.field public final d:Lokhttp3/Call$Factory;

.field public final e:Lcom/dynatrace/agent/di/SecondGenServiceLocator;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Landroid/app/Application;Lokhttp3/Call$Factory;Lcom/dynatrace/agent/di/SecondGenServiceLocator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->a:Lcom/dynatrace/agent/OneAgentConfiguration;

    iput-object p2, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p3, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->c:Landroid/app/Application;

    iput-object p4, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->d:Lokhttp3/Call$Factory;

    iput-object p5, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->e:Lcom/dynatrace/agent/di/SecondGenServiceLocator;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize OneAgent, oneAgentConfiguration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->a:Lcom/dynatrace/agent/OneAgentConfiguration;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " httpFactory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->d:Lokhttp3/Call$Factory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/dynatrace/agent/di/CoreComponent;->k:Lcom/dynatrace/agent/di/CoreComponent$Holder;

    new-instance v5, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl$1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->c:Landroid/app/Application;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->e:Lcom/dynatrace/agent/di/SecondGenServiceLocator;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    if-nez v0, :cond_0

    new-instance v2, Lcom/dynatrace/agent/di/CoreComponent;

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->d:Lokhttp3/Call$Factory;

    move-object v9, p1

    invoke-direct/range {v2 .. v10}, Lcom/dynatrace/agent/di/CoreComponent;-><init>(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;Lokhttp3/Call$Factory;Landroid/app/Application;Lcom/dynatrace/agent/di/SecondGenServiceLocator;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    :cond_0
    return-void
.end method
