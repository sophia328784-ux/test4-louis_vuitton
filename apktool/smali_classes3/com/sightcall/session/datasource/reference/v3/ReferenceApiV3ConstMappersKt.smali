.class public final Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002H\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0000\u001a\u000c\u0010\u0006\u001a\u00020\u0007*\u00020\u0008H\u0000\u001a\u0010\u0010\t\u001a\u0004\u0018\u00010\n*\u0004\u0018\u00010\u000bH\u0000\u001a\u0010\u0010\u000c\u001a\u0004\u0018\u00010\r*\u0004\u0018\u00010\u000eH\u0000\u001a \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "toCallDistribution",
        "Lcom/sightcall/session/Reference$CallDistribution;",
        "Lcom/sightcall/session/datasource/reference/v3/CallDistribution;",
        "toUserRole",
        "Lcom/sightcall/session/Reference$UserRole;",
        "Lcom/sightcall/session/datasource/reference/v3/UserRole;",
        "toButton",
        "Lcom/sightcall/session/Reference$Button;",
        "Lcom/sightcall/session/datasource/reference/v3/Role;",
        "toCameraSide",
        "Lcom/sightcall/session/Reference$CameraSide;",
        "Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;",
        "toVideoProfile",
        "Lcom/sightcall/session/Reference$VideoProfile;",
        "Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;",
        "create",
        "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;",
        "context",
        "Landroid/content/Context;",
        "uri",
        "Landroid/net/Uri;",
        "mobileSolution",
        "",
        "session_release"
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
.method public static final create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;

    new-instance v1, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data;

    new-instance v2, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data$Attributes;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sightcall/session/datasource/reference/v3/SoftwareType$InstantApp;->INSTANCE:Lcom/sightcall/session/datasource/reference/v3/SoftwareType$InstantApp;

    :goto_0
    invoke-virtual {v4}, Lcom/sightcall/session/datasource/reference/v3/SoftwareType;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/sightcall/session/datasource/reference/v3/SoftwareType$FullApp;->INSTANCE:Lcom/sightcall/session/datasource/reference/v3/SoftwareType$FullApp;

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/sightcall/pratik/extensions/ContextExtensionsKt;->appVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v14, 0x400

    const/4 v15, 0x0

    const-string v4, "android"

    const-string v9, "aphone"

    const-string v11, "7.10.2"

    const/4 v13, 0x0

    move-object/from16 v12, p2

    invoke-direct/range {v2 .. v15}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data$Attributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/Reason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data;-><init>(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data$Attributes;)V

    invoke-direct {v0, v1}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;-><init>(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data;)V

    return-object v0
.end method

.method public static final toButton(Lcom/sightcall/session/datasource/reference/v3/Role;)Lcom/sightcall/session/Reference$Button;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/sightcall/session/Reference$Button$SwitchSpeaker;->INSTANCE:Lcom/sightcall/session/Reference$Button$SwitchSpeaker;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/sightcall/session/Reference$Button$SwitchCamera;->INSTANCE:Lcom/sightcall/session/Reference$Button$SwitchCamera;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sightcall/session/Reference$Button$StartTorch;->INSTANCE:Lcom/sightcall/session/Reference$Button$StartTorch;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sightcall/session/Reference$Button$StartScreencast;->INSTANCE:Lcom/sightcall/session/Reference$Button$StartScreencast;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sightcall/session/Reference$Button$StartMicro;->INSTANCE:Lcom/sightcall/session/Reference$Button$StartMicro;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sightcall/session/Reference$Button$StartCamera;->INSTANCE:Lcom/sightcall/session/Reference$Button$StartCamera;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/sightcall/session/Reference$Button$ShareMedia;->INSTANCE:Lcom/sightcall/session/Reference$Button$ShareMedia;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/sightcall/session/Reference$Button$PauseCamera;->INSTANCE:Lcom/sightcall/session/Reference$Button$PauseCamera;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/sightcall/session/Reference$Button$OpenChat;->INSTANCE:Lcom/sightcall/session/Reference$Button$OpenChat;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/sightcall/session/Reference$Button$HangupCall;->INSTANCE:Lcom/sightcall/session/Reference$Button$HangupCall;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/sightcall/session/Reference$Button$EraseDrawing;->INSTANCE:Lcom/sightcall/session/Reference$Button$EraseDrawing;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final toCallDistribution(Lcom/sightcall/session/datasource/reference/v3/CallDistribution;)Lcom/sightcall/session/Reference$CallDistribution;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/sightcall/session/Reference$CallDistribution$Direct;->INSTANCE:Lcom/sightcall/session/Reference$CallDistribution$Direct;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sightcall/session/Reference$CallDistribution$Code;->INSTANCE:Lcom/sightcall/session/Reference$CallDistribution$Code;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sightcall/session/Reference$CallDistribution$Acd;->INSTANCE:Lcom/sightcall/session/Reference$CallDistribution$Acd;

    return-object p0
.end method

.method public static final toCameraSide(Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;)Lcom/sightcall/session/Reference$CameraSide;
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    :goto_0
    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/sightcall/session/Reference$CameraSide$Back;->INSTANCE:Lcom/sightcall/session/Reference$CameraSide$Back;

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_2
    sget-object p0, Lcom/sightcall/session/Reference$CameraSide$Front;->INSTANCE:Lcom/sightcall/session/Reference$CameraSide$Front;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static final toUserRole(Lcom/sightcall/session/datasource/reference/v3/UserRole;)Lcom/sightcall/session/Reference$UserRole;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sightcall/session/Reference$UserRole$Attendee;->INSTANCE:Lcom/sightcall/session/Reference$UserRole$Attendee;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/sightcall/session/Reference$UserRole$Guest;->INSTANCE:Lcom/sightcall/session/Reference$UserRole$Guest;

    return-object p0
.end method

.method public static final toVideoProfile(Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;)Lcom/sightcall/session/Reference$VideoProfile;
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    :goto_0
    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/sightcall/session/Reference$VideoProfile$Md;->INSTANCE:Lcom/sightcall/session/Reference$VideoProfile$Md;

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_2
    sget-object p0, Lcom/sightcall/session/Reference$VideoProfile$Sd;->INSTANCE:Lcom/sightcall/session/Reference$VideoProfile$Sd;

    return-object p0

    :cond_3
    return-object v1
.end method
