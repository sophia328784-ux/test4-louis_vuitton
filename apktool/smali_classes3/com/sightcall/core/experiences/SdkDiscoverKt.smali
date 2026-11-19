.class public final Lcom/sightcall/core/experiences/SdkDiscoverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\u0000\u001a\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0000\u001a\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0000\u001a\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0000\u001a\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0000\u00a8\u0006\n"
    }
    d2 = {
        "initDigitalFlow",
        "Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;",
        "initVisualAssistanceWrapper",
        "Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;",
        "initFeatureWrapper",
        "Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;",
        "initDebugWrapper",
        "Lcom/sightcall/core/experiences/wrapper/DebugWrapper;",
        "initLoginWrapper",
        "Lcom/sightcall/core/experiences/wrapper/LoginWrapper;",
        "core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final initDebugWrapper()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.sightcall.extras.debug.DebugWrapperImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/sightcall/core/experiences/wrapper/DebugWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static final initDigitalFlow()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.sightcall.digitalflow.DigitalFlowWrapperImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static final initFeatureWrapper()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.sightcall.agent.FeatureWrapperImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static final initLoginWrapper()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.sightcall.login.LoginWrapperImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/sightcall/core/experiences/wrapper/LoginWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static final initVisualAssistanceWrapper()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/sightcall/universal/VisualAssistanceWrapperImpl;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
