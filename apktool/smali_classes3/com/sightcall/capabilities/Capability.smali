.class public abstract Lcom/sightcall/capabilities/Capability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;,
        Lcom/sightcall/capabilities/Capability$CameraPause;,
        Lcom/sightcall/capabilities/Capability$CaseReportV3;,
        Lcom/sightcall/capabilities/Capability$ChangeCamera;,
        Lcom/sightcall/capabilities/Capability$CoBrowsing;,
        Lcom/sightcall/capabilities/Capability$Flashlight;,
        Lcom/sightcall/capabilities/Capability$GuestSwitch;,
        Lcom/sightcall/capabilities/Capability$Note;,
        Lcom/sightcall/capabilities/Capability$Ocr;,
        Lcom/sightcall/capabilities/Capability$PictureEdition;,
        Lcom/sightcall/capabilities/Capability$ScreenCast;,
        Lcom/sightcall/capabilities/Capability$ShareFromGallery;,
        Lcom/sightcall/capabilities/Capability$Snapshot;,
        Lcom/sightcall/capabilities/Capability$TouchScreen;,
        Lcom/sightcall/capabilities/Capability$TranslationRemote;,
        Lcom/sightcall/capabilities/Capability$Zoom;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0010\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016B\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0006\u0082\u0001\u0010\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/sightcall/capabilities/Capability;",
        "",
        "isAvailableOnInstantApp",
        "",
        "<init>",
        "(Z)V",
        "()Z",
        "Snapshot",
        "Zoom",
        "Flashlight",
        "ShareFromGallery",
        "Ocr",
        "CoBrowsing",
        "ScreenCast",
        "Note",
        "ChangeCamera",
        "CameraPause",
        "GuestSwitch",
        "AdvancedAnnotations",
        "TouchScreen",
        "PictureEdition",
        "TranslationRemote",
        "CaseReportV3",
        "Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;",
        "Lcom/sightcall/capabilities/Capability$CameraPause;",
        "Lcom/sightcall/capabilities/Capability$CaseReportV3;",
        "Lcom/sightcall/capabilities/Capability$ChangeCamera;",
        "Lcom/sightcall/capabilities/Capability$CoBrowsing;",
        "Lcom/sightcall/capabilities/Capability$Flashlight;",
        "Lcom/sightcall/capabilities/Capability$GuestSwitch;",
        "Lcom/sightcall/capabilities/Capability$Note;",
        "Lcom/sightcall/capabilities/Capability$Ocr;",
        "Lcom/sightcall/capabilities/Capability$PictureEdition;",
        "Lcom/sightcall/capabilities/Capability$ScreenCast;",
        "Lcom/sightcall/capabilities/Capability$ShareFromGallery;",
        "Lcom/sightcall/capabilities/Capability$Snapshot;",
        "Lcom/sightcall/capabilities/Capability$TouchScreen;",
        "Lcom/sightcall/capabilities/Capability$TranslationRemote;",
        "Lcom/sightcall/capabilities/Capability$Zoom;",
        "capabilities_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final isAvailableOnInstantApp:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/capabilities/Capability;->isAvailableOnInstantApp:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/capabilities/Capability;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final isAvailableOnInstantApp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/capabilities/Capability;->isAvailableOnInstantApp:Z

    return p0
.end method
