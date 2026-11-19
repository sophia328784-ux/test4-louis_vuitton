.class public final Lcom/sightcall/capabilities/CapabilitiesMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toRtccCapability",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;",
        "Lcom/sightcall/capabilities/Capability;",
        "capabilities_release"
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
.method public static final toRtccCapability(Lcom/sightcall/capabilities/Capability;)Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;->INSTANCE:Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$AdvancedAnnotations;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$AdvancedAnnotations;

    return-object p0

    :cond_0
    sget-object v0, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CameraPause;

    return-object p0

    :cond_1
    sget-object v0, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ChangeCamera;

    return-object p0

    :cond_2
    sget-object v0, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CoBrowsing;

    return-object p0

    :cond_3
    sget-object v0, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Flashlight;

    return-object p0

    :cond_4
    sget-object v0, Lcom/sightcall/capabilities/Capability$GuestSwitch;->INSTANCE:Lcom/sightcall/capabilities/Capability$GuestSwitch;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$GuestSwitch;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$GuestSwitch;

    return-object p0

    :cond_5
    sget-object v0, Lcom/sightcall/capabilities/Capability$Note;->INSTANCE:Lcom/sightcall/capabilities/Capability$Note;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Note;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Note;

    return-object p0

    :cond_6
    sget-object v0, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Ocr;

    return-object p0

    :cond_7
    sget-object v0, Lcom/sightcall/capabilities/Capability$PictureEdition;->INSTANCE:Lcom/sightcall/capabilities/Capability$PictureEdition;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$PictureEdition;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$PictureEdition;

    return-object p0

    :cond_8
    sget-object v0, Lcom/sightcall/capabilities/Capability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/Capability$ScreenCast;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ScreenCast;

    return-object p0

    :cond_9
    sget-object v0, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ShareFromGallery;

    return-object p0

    :cond_a
    sget-object v0, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Snapshot;

    return-object p0

    :cond_b
    sget-object v0, Lcom/sightcall/capabilities/Capability$TouchScreen;->INSTANCE:Lcom/sightcall/capabilities/Capability$TouchScreen;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TouchScreen;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TouchScreen;

    return-object p0

    :cond_c
    sget-object v0, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Zoom;

    return-object p0

    :cond_d
    sget-object v0, Lcom/sightcall/capabilities/Capability$TranslationRemote;->INSTANCE:Lcom/sightcall/capabilities/Capability$TranslationRemote;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TranslationRemote;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TranslationRemote;

    return-object p0

    :cond_e
    sget-object v0, Lcom/sightcall/capabilities/Capability$CaseReportV3;->INSTANCE:Lcom/sightcall/capabilities/Capability$CaseReportV3;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    sget-object p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CaseReportV3;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CaseReportV3;

    return-object p0

    :cond_f
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
