.class public final Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity;
.super Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Companion",
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
.field public static final l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;-><init>()V

    return-void
.end method
