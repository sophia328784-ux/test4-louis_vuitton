.class public final Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/navigation3/runtime/NavKey;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Landroidx/navigation3/runtime/NavBackStack<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0003B\u0015\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;",
        "Landroidx/navigation3/runtime/NavKey;",
        "T",
        "Lkotlinx/serialization/KSerializer;",
        "Landroidx/navigation3/runtime/NavBackStack;",
        "elementSerializer",
        "<init>",
        "(Lkotlinx/serialization/KSerializer;)V",
        "navigation3-runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/KSerializer;

.field public final b:Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;

.field public final c:Lkotlinx/serialization/descriptors/WrappedSerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;->a:Lkotlinx/serialization/KSerializer;

    new-instance v0, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;

    invoke-direct {v0, p1}, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iput-object v0, p0, Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;->b:Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;

    const-string p1, "androidx.navigation3.runtime.NavBackStack"

    iget-object v0, v0, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;->c:Lkotlinx/serialization/descriptors/WrappedSerialDescriptor;

    invoke-static {p1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->b(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/WrappedSerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;->c:Lkotlinx/serialization/descriptors/WrappedSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;->c:Lkotlinx/serialization/descriptors/WrappedSerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/navigation3/runtime/NavBackStack;

    iget-object p0, p0, Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;->b:Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->D(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v0, p0}, Landroidx/navigation3/runtime/NavBackStack;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;)V

    return-object v0
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/navigation3/runtime/NavBackStack;

    iget-object p0, p0, Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;->b:Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;

    iget-object p2, p2, Landroidx/navigation3/runtime/NavBackStack;->b:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method
