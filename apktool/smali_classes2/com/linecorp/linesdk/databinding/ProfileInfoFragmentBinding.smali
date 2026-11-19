.class public abstract Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic t:I


# instance fields
.field public final r:Landroid/widget/EditText;

.field public s:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->r:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public abstract m(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
.end method
