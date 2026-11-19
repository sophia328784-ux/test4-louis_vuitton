.class Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$4;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;

    iput-object p2, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$4;->val$v:Landroid/view/View;

    invoke-static {p0}, Lcom/sightcall/universal/util/UiUtils;->showSoftKeyboard(Landroid/view/View;)V

    return-void
.end method
