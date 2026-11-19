.class public interface abstract Lcom/perfectcorp/perfectlib/BraceletVtoApplier$ApplyCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/BraceletVtoApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplyCallback"
.end annotation


# static fields
.field public static final NOP:Lcom/perfectcorp/perfectlib/BraceletVtoApplier$ApplyCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/BraceletVtoApplier$ApplyCallback$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/BraceletVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/BraceletVtoApplier$ApplyCallback;

    return-void
.end method


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Landroid/graphics/Bitmap;)V
.end method
