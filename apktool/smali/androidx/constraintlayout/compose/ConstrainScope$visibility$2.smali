.class public final Landroidx/constraintlayout/compose/ConstrainScope$visibility$2;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/compose/ConstrainScope;-><init>(Ljava/lang/Object;Landroidx/constraintlayout/core/parser/CLObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ObservableProperty<",
        "Landroidx/constraintlayout/compose/Visibility;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "androidx/constraintlayout/compose/ConstrainScope$visibility$2",
        "Lkotlin/properties/ObservableProperty;",
        "Landroidx/constraintlayout/compose/Visibility;",
        "constraintlayout-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/constraintlayout/compose/ConstrainScope;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/compose/ConstrainScope;Landroidx/constraintlayout/compose/Visibility;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/compose/ConstrainScope$visibility$2;->b:Landroidx/constraintlayout/compose/ConstrainScope;

    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Landroidx/constraintlayout/compose/Visibility;

    check-cast p3, Landroidx/constraintlayout/compose/Visibility;

    iget-object p0, p0, Landroidx/constraintlayout/compose/ConstrainScope$visibility$2;->b:Landroidx/constraintlayout/compose/ConstrainScope;

    iget-object p0, p0, Landroidx/constraintlayout/compose/ConstrainScope;->b:Landroidx/constraintlayout/core/parser/CLObject;

    invoke-interface {p1}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p3, Landroidx/constraintlayout/compose/Visibility;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Landroidx/constraintlayout/core/parser/CLString;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/constraintlayout/core/parser/CLString;-><init>([C)V

    const-wide/16 v0, 0x0

    iput-wide v0, p3, Landroidx/constraintlayout/core/parser/CLElement;->c:J

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-long v0, p2

    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/parser/CLElement;->x(J)V

    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/core/parser/CLContainer;->R(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    return-void
.end method
