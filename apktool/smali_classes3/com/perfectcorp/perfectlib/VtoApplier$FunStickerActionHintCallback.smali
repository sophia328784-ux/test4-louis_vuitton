.class public interface abstract Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FunStickerActionHintCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb21;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    return-void
.end method


# virtual methods
.method public abstract onTrigger(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;",
            ">;)V"
        }
    .end annotation
.end method
