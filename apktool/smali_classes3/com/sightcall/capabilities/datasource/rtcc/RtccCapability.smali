.class public abstract Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$AdvancedAnnotations;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CameraPause;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CaseReportV3;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ChangeCamera;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CoBrowsing;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Flashlight;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$GuestSwitch;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Note;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Ocr;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$PictureEdition;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ScreenCast;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ShareFromGallery;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Snapshot;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TouchScreen;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TranslationRemote;,
        Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Zoom;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0010\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017B\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0010\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'\u00a8\u0006("
    }
    d2 = {
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
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
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$AdvancedAnnotations;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CameraPause;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CaseReportV3;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ChangeCamera;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CoBrowsing;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Flashlight;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$GuestSwitch;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Note;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Ocr;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$PictureEdition;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ScreenCast;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ShareFromGallery;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Snapshot;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TouchScreen;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TranslationRemote;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Zoom;",
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
.field private final code:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;->code:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;->code:Ljava/lang/String;

    return-object p0
.end method
