.class public Lcom/sightcall/universal/model/CallParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allowUsbCamera:Z

.field public ar:Lcom/sightcall/universal/ar/ArConfig;

.field public hasRequestedHangup:Z

.field public isPendingLocationRequest:Z

.field public isPendingScreencastRequest:Z

.field public isSharePictureGalleryDisplayed:Z

.field public isSharePromptDisplayed:Z

.field public isShareVideoGalleryDisplayed:Z

.field public isShareViewFinderDisplayed:Z

.field public lastLocation:Landroid/location/Location;

.field public pendingProposition:Lcom/sightcall/universal/internal/proposition/Proposition;

.field public restartVideoAfterPicture:Z

.field public screenshareContentUri:Landroid/net/Uri;

.field public screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

.field public screenshareWebUrl:Ljava/lang/String;

.field public showCollimator:Z

.field public videoStopPending:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/model/CallParameters;->allowUsbCamera:Z

    return-void
.end method
