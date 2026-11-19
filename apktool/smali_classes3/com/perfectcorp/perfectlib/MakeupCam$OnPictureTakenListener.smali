.class interface abstract Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/MakeupCam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPictureTakenListener"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;->NOP:Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;

    return-void
.end method


# virtual methods
.method public abstract onTaken()V
.end method
