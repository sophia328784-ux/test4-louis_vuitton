.class final Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventData"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

.field public final b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->a:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->a:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->c:Ljava/lang/String;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->d:Ljava/util/List;

    return-void
.end method
