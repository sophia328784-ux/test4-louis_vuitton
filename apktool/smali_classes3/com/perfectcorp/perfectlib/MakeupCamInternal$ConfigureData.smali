.class final Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/MakeupCamInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigureData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
