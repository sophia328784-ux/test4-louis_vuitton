.class public abstract Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic y:I


# instance fields
.field public final r:Landroid/view/View;

.field public final s:Landroid/view/View;

.field public final t:Landroid/widget/EditText;

.field public final u:Landroid/view/View;

.field public final v:Landroid/widget/EditText;

.field public final w:Landroid/widget/CheckBox;

.field public x:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->r:Landroid/view/View;

    iput-object p4, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->s:Landroid/view/View;

    iput-object p5, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->t:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->u:Landroid/view/View;

    iput-object p7, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->v:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->w:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public abstract m(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
.end method
