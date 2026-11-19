.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$ViewHolder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleRoomDetailBinding;",
        "binding",
        "<init>",
        "(Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleRoomDetailBinding;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final b:Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleRoomDetailBinding;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleRoomDetailBinding;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleRoomDetailBinding;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$ViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleRoomDetailBinding;

    return-void
.end method
