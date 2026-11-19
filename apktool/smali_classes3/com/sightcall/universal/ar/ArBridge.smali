.class public interface abstract Lcom/sightcall/universal/ar/ArBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final META_DATA_KEY:Ljava/lang/String; = "com.sightcall.universal.ar.ArBridge"

.field public static final NOOP:Lcom/sightcall/universal/ar/ArBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/ar/ArBridge$1;

    invoke-direct {v0}, Lcom/sightcall/universal/ar/ArBridge$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/ar/ArBridge;->NOOP:Lcom/sightcall/universal/ar/ArBridge;

    return-void
.end method


# virtual methods
.method public abstract checkArCoreAvailability()V
.end method

.method public abstract getActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArCoreState()Lcom/sightcall/universal/ar/ArCoreState;
.end method

.method public abstract isArCoreUnsupported()Z
.end method

.method public abstract startActivity(Landroid/app/Activity;)V
.end method
