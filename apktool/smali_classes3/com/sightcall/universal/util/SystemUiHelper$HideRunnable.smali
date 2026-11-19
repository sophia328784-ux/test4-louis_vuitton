.class Lcom/sightcall/universal/util/SystemUiHelper$HideRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/util/SystemUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HideRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/util/SystemUiHelper;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/util/SystemUiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/util/SystemUiHelper$HideRunnable;->this$0:Lcom/sightcall/universal/util/SystemUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/util/SystemUiHelper;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/util/SystemUiHelper$HideRunnable;-><init>(Lcom/sightcall/universal/util/SystemUiHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/SystemUiHelper$HideRunnable;->this$0:Lcom/sightcall/universal/util/SystemUiHelper;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper;->hide()V

    return-void
.end method
