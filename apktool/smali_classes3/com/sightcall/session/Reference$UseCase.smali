.class public final Lcom/sightcall/session/Reference$UseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/session/Reference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UseCase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/session/Reference$UseCase$Analytics;,
        Lcom/sightcall/session/Reference$UseCase$Consent;,
        Lcom/sightcall/session/Reference$UseCase$LiveTranslation;,
        Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;,
        Lcom/sightcall/session/Reference$UseCase$Survey;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u00082\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0005YZ[\\]B\u009b\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u0012\u0006\u0010\u0018\u001a\u00020\r\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\r\u0012\u0006\u0010\u001b\u001a\u00020\r\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\"\u0012\u0006\u0010#\u001a\u00020\r\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020\t\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010*\u001a\u00020\r\u0012\u0008\u0010+\u001a\u0004\u0018\u00010,\u0012\u0008\u0010-\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010.\u001a\u00020\u0003\u00a2\u0006\u0004\u0008/\u00100J\u0010\u00103\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00104J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\t\u00109\u001a\u00020\rH\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\t\u0010;\u001a\u00020\rH\u00c6\u0003J\t\u0010<\u001a\u00020\rH\u00c6\u0003J\t\u0010=\u001a\u00020\rH\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u00c6\u0003J\t\u0010@\u001a\u00020\rH\u00c6\u0003J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\t\u0010B\u001a\u00020\rH\u00c6\u0003J\t\u0010C\u001a\u00020\rH\u00c6\u0003J\t\u0010D\u001a\u00020\u001dH\u00c6\u0003J\u0010\u0010E\u001a\u0004\u0018\u00010\u001fH\u00c6\u0003\u00a2\u0006\u0002\u0010FJ\u0010\u0010G\u001a\u0004\u0018\u00010\u001fH\u00c6\u0003\u00a2\u0006\u0002\u0010FJ\u000b\u0010H\u001a\u0004\u0018\u00010\"H\u00c6\u0003J\t\u0010I\u001a\u00020\rH\u00c6\u0003J\t\u0010J\u001a\u00020%H\u00c6\u0003J\t\u0010K\u001a\u00020\tH\u00c6\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010O\u001a\u00020\rH\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010,H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010R\u001a\u00020\u0003H\u00c6\u0003J\u00de\u0002\u0010S\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001a\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020\r2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\t2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010*\u001a\u00020\r2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,2\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010.\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010TJ\u0014\u0010U\u001a\u00020\r2\u0008\u0010V\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010W\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u0010X\u001a\u00020\tH\u00d6\u0081\u0004R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00101R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00102R\u0014\u0010 \u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00102R\u0012\u0010!\u001a\u0004\u0018\u00010\"8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u00020%8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\'\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u0004\u0018\u00010,8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006^"
    }
    d2 = {
        "Lcom/sightcall/session/Reference$UseCase;",
        "",
        "id",
        "",
        "userRole",
        "Lcom/sightcall/session/Reference$UserRole;",
        "mode",
        "Lcom/sightcall/session/Reference$CallDistribution;",
        "name",
        "",
        "videoOut",
        "Lcom/sightcall/session/Reference$CameraSide;",
        "videoOutStartup",
        "",
        "videoProfile",
        "Lcom/sightcall/session/Reference$VideoProfile;",
        "videoPointerOut",
        "mute",
        "videoOutWhilePicture",
        "survey",
        "Lcom/sightcall/session/Reference$UseCase$Survey;",
        "buttonsLocal",
        "",
        "Lcom/sightcall/session/Reference$Button;",
        "alwaysVisible",
        "chatMessageOverlayTimeout",
        "chatQuickActions",
        "allowUsbCamera",
        "propositionTemplate",
        "Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;",
        "ocrRatio",
        "",
        "ocrSafeArea",
        "guestConsent",
        "Lcom/sightcall/session/Reference$UseCase$Consent;",
        "advancedAnnotations",
        "liveTranslation",
        "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
        "caseReportId",
        "reference",
        "displayNameMode",
        "displayName",
        "ignoreConsent",
        "analytics",
        "Lcom/sightcall/session/Reference$UseCase$Analytics;",
        "rtccMpi",
        "acdRequestTimeout",
        "<init>",
        "(Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;I)V",
        "Ljava/lang/Integer;",
        "Ljava/lang/Double;",
        "component1",
        "()Ljava/lang/Integer;",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "()Ljava/lang/Double;",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "copy",
        "(Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;I)Lcom/sightcall/session/Reference$UseCase;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Survey",
        "PropositionTemplate",
        "Consent",
        "LiveTranslation",
        "Analytics",
        "session_release"
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
.field public final acdRequestTimeout:I

.field public final advancedAnnotations:Z

.field public final allowUsbCamera:Z

.field public final alwaysVisible:Z

.field public final analytics:Lcom/sightcall/session/Reference$UseCase$Analytics;

.field public final buttonsLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/session/Reference$Button;",
            ">;"
        }
    .end annotation
.end field

.field public final caseReportId:Ljava/lang/String;

.field public final chatMessageOverlayTimeout:I

.field public final chatQuickActions:Z

.field public final displayName:Ljava/lang/String;

.field public final displayNameMode:Ljava/lang/String;

.field public final guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

.field public final id:Ljava/lang/Integer;

.field public final ignoreConsent:Z

.field public final liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

.field public final mode:Lcom/sightcall/session/Reference$CallDistribution;

.field public final mute:Z

.field public final name:Ljava/lang/String;

.field public final ocrRatio:Ljava/lang/Double;

.field public final ocrSafeArea:Ljava/lang/Double;

.field public final propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

.field public final reference:Ljava/lang/String;

.field public final rtccMpi:Ljava/lang/String;

.field public final survey:Lcom/sightcall/session/Reference$UseCase$Survey;

.field public final userRole:Lcom/sightcall/session/Reference$UserRole;

.field public final videoOut:Lcom/sightcall/session/Reference$CameraSide;

.field public final videoOutStartup:Z

.field public final videoOutWhilePicture:Z

.field public final videoPointerOut:Z

.field public final videoProfile:Lcom/sightcall/session/Reference$VideoProfile;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/sightcall/session/Reference$UserRole;",
            "Lcom/sightcall/session/Reference$CallDistribution;",
            "Ljava/lang/String;",
            "Lcom/sightcall/session/Reference$CameraSide;",
            "Z",
            "Lcom/sightcall/session/Reference$VideoProfile;",
            "ZZZ",
            "Lcom/sightcall/session/Reference$UseCase$Survey;",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/session/Reference$Button;",
            ">;ZIZZ",
            "Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/sightcall/session/Reference$UseCase$Consent;",
            "Z",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sightcall/session/Reference$UseCase$Analytics;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sightcall/session/Reference$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    iput-object p3, p0, Lcom/sightcall/session/Reference$UseCase;->mode:Lcom/sightcall/session/Reference$CallDistribution;

    iput-object p4, p0, Lcom/sightcall/session/Reference$UseCase;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/sightcall/session/Reference$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    iput-boolean p6, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutStartup:Z

    iput-object p7, p0, Lcom/sightcall/session/Reference$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    iput-boolean p8, p0, Lcom/sightcall/session/Reference$UseCase;->videoPointerOut:Z

    iput-boolean p9, p0, Lcom/sightcall/session/Reference$UseCase;->mute:Z

    iput-boolean p10, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutWhilePicture:Z

    iput-object p11, p0, Lcom/sightcall/session/Reference$UseCase;->survey:Lcom/sightcall/session/Reference$UseCase$Survey;

    iput-object p12, p0, Lcom/sightcall/session/Reference$UseCase;->buttonsLocal:Ljava/util/List;

    iput-boolean p13, p0, Lcom/sightcall/session/Reference$UseCase;->alwaysVisible:Z

    iput p14, p0, Lcom/sightcall/session/Reference$UseCase;->chatMessageOverlayTimeout:I

    iput-boolean p15, p0, Lcom/sightcall/session/Reference$UseCase;->chatQuickActions:Z

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/sightcall/session/Reference$UseCase;->allowUsbCamera:Z

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->ocrRatio:Ljava/lang/Double;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->ocrSafeArea:Ljava/lang/Double;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

    move/from16 p1, p21

    iput-boolean p1, p0, Lcom/sightcall/session/Reference$UseCase;->advancedAnnotations:Z

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->caseReportId:Ljava/lang/String;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->reference:Ljava/lang/String;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->displayNameMode:Ljava/lang/String;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->displayName:Ljava/lang/String;

    move/from16 p1, p27

    iput-boolean p1, p0, Lcom/sightcall/session/Reference$UseCase;->ignoreConsent:Z

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->analytics:Lcom/sightcall/session/Reference$UseCase$Analytics;

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/sightcall/session/Reference$UseCase;->rtccMpi:Ljava/lang/String;

    move/from16 p1, p30

    iput p1, p0, Lcom/sightcall/session/Reference$UseCase;->acdRequestTimeout:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/session/Reference$UseCase;Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;IILjava/lang/Object;)Lcom/sightcall/session/Reference$UseCase;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p31

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sightcall/session/Reference$UseCase;->id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/sightcall/session/Reference$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/sightcall/session/Reference$UseCase;->mode:Lcom/sightcall/session/Reference$CallDistribution;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/sightcall/session/Reference$UseCase;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/sightcall/session/Reference$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/sightcall/session/Reference$UseCase;->videoOutStartup:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/sightcall/session/Reference$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/sightcall/session/Reference$UseCase;->videoPointerOut:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/sightcall/session/Reference$UseCase;->mute:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/sightcall/session/Reference$UseCase;->videoOutWhilePicture:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/sightcall/session/Reference$UseCase;->survey:Lcom/sightcall/session/Reference$UseCase$Survey;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/sightcall/session/Reference$UseCase;->buttonsLocal:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/sightcall/session/Reference$UseCase;->alwaysVisible:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/sightcall/session/Reference$UseCase;->chatMessageOverlayTimeout:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/sightcall/session/Reference$UseCase;->chatQuickActions:Z

    goto :goto_e

    :cond_e
    move/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-boolean v1, v0, Lcom/sightcall/session/Reference$UseCase;->allowUsbCamera:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p31, v16

    move/from16 p2, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p31, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->ocrRatio:Ljava/lang/Double;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p31, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->ocrSafeArea:Ljava/lang/Double;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p31, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p31, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    iget-boolean v1, v0, Lcom/sightcall/session/Reference$UseCase;->advancedAnnotations:Z

    goto :goto_14

    :cond_14
    move/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p31, v16

    move/from16 p7, v1

    if-eqz v16, :cond_15

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p31, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->caseReportId:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p31, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->reference:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p31, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->displayNameMode:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p31, v16

    move-object/from16 p11, v1

    if-eqz v16, :cond_19

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->displayName:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p31, v16

    move-object/from16 p12, v1

    if-eqz v16, :cond_1a

    iget-boolean v1, v0, Lcom/sightcall/session/Reference$UseCase;->ignoreConsent:Z

    goto :goto_1a

    :cond_1a
    move/from16 v1, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p31, v16

    move/from16 p13, v1

    if-eqz v16, :cond_1b

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->analytics:Lcom/sightcall/session/Reference$UseCase$Analytics;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, p31, v16

    move-object/from16 p14, v1

    if-eqz v16, :cond_1c

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->rtccMpi:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, p31, v16

    if-eqz v16, :cond_1d

    move-object/from16 p15, v1

    iget v1, v0, Lcom/sightcall/session/Reference$UseCase;->acdRequestTimeout:I

    move-object/from16 p30, p15

    move/from16 p31, v1

    :goto_1d
    move/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p27, p12

    move/from16 p28, p13

    move-object/from16 p29, p14

    move/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_1e

    :cond_1d
    move/from16 p31, p30

    move-object/from16 p30, v1

    goto :goto_1d

    :goto_1e
    invoke-virtual/range {p1 .. p31}, Lcom/sightcall/session/Reference$UseCase;->copy(Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;I)Lcom/sightcall/session/Reference$UseCase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component10()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutWhilePicture:Z

    return p0
.end method

.method public final component11()Lcom/sightcall/session/Reference$UseCase$Survey;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->survey:Lcom/sightcall/session/Reference$UseCase$Survey;

    return-object p0
.end method

.method public final component12()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/session/Reference$Button;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->buttonsLocal:Ljava/util/List;

    return-object p0
.end method

.method public final component13()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->alwaysVisible:Z

    return p0
.end method

.method public final component14()I
    .locals 0

    iget p0, p0, Lcom/sightcall/session/Reference$UseCase;->chatMessageOverlayTimeout:I

    return p0
.end method

.method public final component15()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->chatQuickActions:Z

    return p0
.end method

.method public final component16()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->allowUsbCamera:Z

    return p0
.end method

.method public final component17()Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    return-object p0
.end method

.method public final component18()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->ocrRatio:Ljava/lang/Double;

    return-object p0
.end method

.method public final component19()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->ocrSafeArea:Ljava/lang/Double;

    return-object p0
.end method

.method public final component2()Lcom/sightcall/session/Reference$UserRole;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    return-object p0
.end method

.method public final component20()Lcom/sightcall/session/Reference$UseCase$Consent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

    return-object p0
.end method

.method public final component21()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->advancedAnnotations:Z

    return p0
.end method

.method public final component22()Lcom/sightcall/session/Reference$UseCase$LiveTranslation;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    return-object p0
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->caseReportId:Ljava/lang/String;

    return-object p0
.end method

.method public final component24()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public final component25()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->displayNameMode:Ljava/lang/String;

    return-object p0
.end method

.method public final component26()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final component27()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->ignoreConsent:Z

    return p0
.end method

.method public final component28()Lcom/sightcall/session/Reference$UseCase$Analytics;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->analytics:Lcom/sightcall/session/Reference$UseCase$Analytics;

    return-object p0
.end method

.method public final component29()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->rtccMpi:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Lcom/sightcall/session/Reference$CallDistribution;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->mode:Lcom/sightcall/session/Reference$CallDistribution;

    return-object p0
.end method

.method public final component30()I
    .locals 0

    iget p0, p0, Lcom/sightcall/session/Reference$UseCase;->acdRequestTimeout:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Lcom/sightcall/session/Reference$CameraSide;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    return-object p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutStartup:Z

    return p0
.end method

.method public final component7()Lcom/sightcall/session/Reference$VideoProfile;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    return-object p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->videoPointerOut:Z

    return p0
.end method

.method public final component9()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$UseCase;->mute:Z

    return p0
.end method

.method public final copy(Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;I)Lcom/sightcall/session/Reference$UseCase;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/sightcall/session/Reference$UserRole;",
            "Lcom/sightcall/session/Reference$CallDistribution;",
            "Ljava/lang/String;",
            "Lcom/sightcall/session/Reference$CameraSide;",
            "Z",
            "Lcom/sightcall/session/Reference$VideoProfile;",
            "ZZZ",
            "Lcom/sightcall/session/Reference$UseCase$Survey;",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/session/Reference$Button;",
            ">;ZIZZ",
            "Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/sightcall/session/Reference$UseCase$Consent;",
            "Z",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sightcall/session/Reference$UseCase$Analytics;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/sightcall/session/Reference$UseCase;"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/session/Reference$UseCase;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move/from16 v30, p30

    invoke-direct/range {v0 .. v30}, Lcom/sightcall/session/Reference$UseCase;-><init>(Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/session/Reference$UseCase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/session/Reference$UseCase;

    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->id:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->mode:Lcom/sightcall/session/Reference$CallDistribution;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->mode:Lcom/sightcall/session/Reference$CallDistribution;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutStartup:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$UseCase;->videoOutStartup:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->videoPointerOut:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$UseCase;->videoPointerOut:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->mute:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$UseCase;->mute:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutWhilePicture:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$UseCase;->videoOutWhilePicture:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->survey:Lcom/sightcall/session/Reference$UseCase$Survey;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->survey:Lcom/sightcall/session/Reference$UseCase$Survey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->buttonsLocal:Ljava/util/List;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->buttonsLocal:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->alwaysVisible:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$UseCase;->alwaysVisible:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/sightcall/session/Reference$UseCase;->chatMessageOverlayTimeout:I

    iget v3, p1, Lcom/sightcall/session/Reference$UseCase;->chatMessageOverlayTimeout:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->chatQuickActions:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$UseCase;->chatQuickActions:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->allowUsbCamera:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$UseCase;->allowUsbCamera:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->ocrRatio:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->ocrRatio:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->ocrSafeArea:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->ocrSafeArea:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->advancedAnnotations:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$UseCase;->advancedAnnotations:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->caseReportId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->caseReportId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->reference:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->reference:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->displayNameMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->displayNameMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->displayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase;->ignoreConsent:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$UseCase;->ignoreConsent:Z

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->analytics:Lcom/sightcall/session/Reference$UseCase$Analytics;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->analytics:Lcom/sightcall/session/Reference$UseCase$Analytics;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase;->rtccMpi:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase;->rtccMpi:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget p0, p0, Lcom/sightcall/session/Reference$UseCase;->acdRequestTimeout:I

    iget p1, p1, Lcom/sightcall/session/Reference$UseCase;->acdRequestTimeout:I

    if-eq p0, p1, :cond_1f

    return v2

    :cond_1f
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/sightcall/session/Reference$UseCase;->id:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference$UseCase;->mode:Lcom/sightcall/session/Reference$CallDistribution;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference$UseCase;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-boolean v0, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutStartup:Z

    invoke-static {v3, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/sightcall/session/Reference$UseCase;->videoPointerOut:Z

    invoke-static {v0, v2, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/sightcall/session/Reference$UseCase;->mute:Z

    invoke-static {v0, v2, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/sightcall/session/Reference$UseCase;->videoOutWhilePicture:Z

    invoke-static {v0, v2, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->survey:Lcom/sightcall/session/Reference$UseCase$Survey;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lcom/sightcall/session/Reference$UseCase$Survey;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->buttonsLocal:Ljava/util/List;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/sightcall/session/Reference$UseCase;->alwaysVisible:Z

    invoke-static {v0, v2, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget v3, p0, Lcom/sightcall/session/Reference$UseCase;->chatMessageOverlayTimeout:I

    invoke-static {v3, v0, v2}, Ltr;->b(III)I

    move-result v0

    iget-boolean v3, p0, Lcom/sightcall/session/Reference$UseCase;->chatQuickActions:Z

    invoke-static {v0, v2, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/sightcall/session/Reference$UseCase;->allowUsbCamera:Z

    invoke-static {v0, v2, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    invoke-virtual {v3}, Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference$UseCase;->ocrRatio:Ljava/lang/Double;

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference$UseCase;->ocrSafeArea:Ljava/lang/Double;

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference$UseCase;->guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lcom/sightcall/session/Reference$UseCase$Consent;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-boolean v0, p0, Lcom/sightcall/session/Reference$UseCase;->advancedAnnotations:Z

    invoke-static {v3, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    invoke-virtual {v3}, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference$UseCase;->caseReportId:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->reference:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->displayNameMode:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->displayName:Ljava/lang/String;

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/sightcall/session/Reference$UseCase;->ignoreConsent:Z

    invoke-static {v0, v2, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->analytics:Lcom/sightcall/session/Reference$UseCase$Analytics;

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Lcom/sightcall/session/Reference$UseCase$Analytics;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference$UseCase;->rtccMpi:Ljava/lang/String;

    if-nez v3, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget p0, p0, Lcom/sightcall/session/Reference$UseCase;->acdRequestTimeout:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sightcall/session/Reference$UseCase;->id:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/sightcall/session/Reference$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    iget-object v3, v0, Lcom/sightcall/session/Reference$UseCase;->mode:Lcom/sightcall/session/Reference$CallDistribution;

    iget-object v4, v0, Lcom/sightcall/session/Reference$UseCase;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/sightcall/session/Reference$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    iget-boolean v6, v0, Lcom/sightcall/session/Reference$UseCase;->videoOutStartup:Z

    iget-object v7, v0, Lcom/sightcall/session/Reference$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    iget-boolean v8, v0, Lcom/sightcall/session/Reference$UseCase;->videoPointerOut:Z

    iget-boolean v9, v0, Lcom/sightcall/session/Reference$UseCase;->mute:Z

    iget-boolean v10, v0, Lcom/sightcall/session/Reference$UseCase;->videoOutWhilePicture:Z

    iget-object v11, v0, Lcom/sightcall/session/Reference$UseCase;->survey:Lcom/sightcall/session/Reference$UseCase$Survey;

    iget-object v12, v0, Lcom/sightcall/session/Reference$UseCase;->buttonsLocal:Ljava/util/List;

    iget-boolean v13, v0, Lcom/sightcall/session/Reference$UseCase;->alwaysVisible:Z

    iget v14, v0, Lcom/sightcall/session/Reference$UseCase;->chatMessageOverlayTimeout:I

    iget-boolean v15, v0, Lcom/sightcall/session/Reference$UseCase;->chatQuickActions:Z

    move/from16 v16, v15

    iget-boolean v15, v0, Lcom/sightcall/session/Reference$UseCase;->allowUsbCamera:Z

    move/from16 v17, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->propositionTemplate:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->ocrRatio:Ljava/lang/Double;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->ocrSafeArea:Ljava/lang/Double;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->guestConsent:Lcom/sightcall/session/Reference$UseCase$Consent;

    move-object/from16 v21, v15

    iget-boolean v15, v0, Lcom/sightcall/session/Reference$UseCase;->advancedAnnotations:Z

    move/from16 v22, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->caseReportId:Ljava/lang/String;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->reference:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->displayNameMode:Ljava/lang/String;

    move-object/from16 v26, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->displayName:Ljava/lang/String;

    move-object/from16 v27, v15

    iget-boolean v15, v0, Lcom/sightcall/session/Reference$UseCase;->ignoreConsent:Z

    move/from16 v28, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->analytics:Lcom/sightcall/session/Reference$UseCase$Analytics;

    move-object/from16 v29, v15

    iget-object v15, v0, Lcom/sightcall/session/Reference$UseCase;->rtccMpi:Ljava/lang/String;

    iget v0, v0, Lcom/sightcall/session/Reference$UseCase;->acdRequestTimeout:I

    move/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v30, v15

    const-string v15, "UseCase(id="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoOutStartup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPointerOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoOutWhilePicture="

    const-string v2, ", survey="

    invoke-static {v0, v9, v1, v10, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonsLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chatMessageOverlayTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chatQuickActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowUsbCamera="

    const-string v2, ", propositionTemplate="

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ocrRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ocrSafeArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", guestConsent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", advancedAnnotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", liveTranslation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caseReportId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reference="

    const-string v2, ", displayNameMode="

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", displayName="

    const-string v2, ", ignoreConsent="

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", analytics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rtccMpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", acdRequestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
