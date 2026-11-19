.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$Model;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;
    }
.end annotation


# static fields
.field public static F1:Z


# instance fields
.field public A:Z

.field public A1:Z

.field public final B:Ljava/util/HashMap;

.field public final B1:Landroid/graphics/RectF;

.field public C:J

.field public C1:Landroid/view/View;

.field public D:F

.field public D1:Landroid/graphics/Matrix;

.field public E:F

.field public final E1:Ljava/util/ArrayList;

.field public F:F

.field public G:J

.field public H:F

.field public I:Z

.field public J:Z

.field public K:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field public L:I

.field public M:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

.field public N:Z

.field public final O:Landroidx/constraintlayout/motion/utils/StopLogic;

.field public final P:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

.field public Q:Landroidx/constraintlayout/motion/widget/DesignTool;

.field public R:I

.field public S:I

.field public T:Z

.field public V:F

.field public W:F

.field public b1:Z

.field public c1:Ljava/util/ArrayList;

.field public d1:Ljava/util/ArrayList;

.field public e1:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public f1:I

.field public g1:J

.field public h0:J

.field public h1:F

.field public i1:I

.field public j1:F

.field public k1:Z

.field public l1:I

.field public m1:I

.field public n1:I

.field public o1:I

.field public p1:I

.field public q1:I

.field public r:Landroidx/constraintlayout/motion/widget/MotionScene;

.field public r1:F

.field public s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

.field public final s1:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field public t:Landroid/view/animation/Interpolator;

.field public t0:F

.field public t1:Z

.field public u:F

.field public u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

.field public v:I

.field public v1:Lw21;

.field public w:I

.field public final w1:Landroid/graphics/Rect;

.field public x:I

.field public x1:Z

.field public y:I

.field public y1:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public z:I

.field public final z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/utils/StopLogic;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c1:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d1:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1:J

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h1:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i1:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1:Z

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s1:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t1:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v1:Lw21;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w1:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x1:Z

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y1:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A1:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B1:Landroid/graphics/RectF;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D1:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E1:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 149
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    const/4 v1, -0x1

    .line 152
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 153
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 154
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v1, 0x0

    .line 155
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 156
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    const/4 v2, 0x1

    .line 157
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    .line 158
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 159
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 160
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 161
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 162
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 163
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 164
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    .line 165
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 166
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    .line 167
    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 168
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 169
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 170
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    .line 171
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c1:Ljava/util/ArrayList;

    .line 172
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d1:Ljava/util/ArrayList;

    .line 173
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 174
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1:I

    const-wide/16 v2, -0x1

    .line 175
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1:J

    .line 176
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h1:F

    .line 177
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i1:I

    .line 178
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1:F

    .line 179
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1:Z

    .line 180
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s1:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 181
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t1:Z

    .line 182
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v1:Lw21;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w1:Landroid/graphics/Rect;

    .line 185
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x1:Z

    .line 186
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y1:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 187
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 188
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A1:Z

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B1:Landroid/graphics/RectF;

    .line 190
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    .line 191
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D1:Landroid/graphics/Matrix;

    .line 192
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E1:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    .line 196
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    const/4 v0, -0x1

    .line 197
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 198
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 199
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 201
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    const/4 v1, 0x1

    .line 202
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    .line 203
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    .line 204
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 205
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 206
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 207
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 208
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 209
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    .line 210
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 211
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    .line 212
    new-instance v1, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 213
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 214
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 215
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    .line 216
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c1:Ljava/util/ArrayList;

    .line 217
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d1:Ljava/util/ArrayList;

    .line 218
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 219
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1:I

    const-wide/16 v1, -0x1

    .line 220
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1:J

    .line 221
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h1:F

    .line 222
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i1:I

    .line 223
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1:F

    .line 224
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1:Z

    .line 225
    new-instance p3, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {p3}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s1:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 226
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t1:Z

    .line 227
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v1:Lw21;

    .line 228
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 229
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w1:Landroid/graphics/Rect;

    .line 230
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x1:Z

    .line 231
    sget-object p3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y1:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 232
    new-instance p3, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 233
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A1:Z

    .line 234
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B1:Landroid/graphics/RectF;

    .line 235
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    .line 236
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D1:Landroid/graphics/Matrix;

    .line 237
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E1:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static q(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .locals 2

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w1:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final B()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final C(I)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    invoke-virtual {v0, p0, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->b(FFI)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    return-void
.end method

.method public final D(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->m(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->e(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    :cond_2
    return-void
.end method

.method public final E(FFI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v1, p3

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v6, :cond_2

    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    goto :goto_1

    :cond_2
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->j:I

    :goto_1
    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/utils/StopLogic;

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_8

    if-eq v1, v12, :cond_8

    const/4 v15, 0x4

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    if-eq v1, v15, :cond_7

    const/4 v15, 0x5

    if-eq v1, v15, :cond_3

    if-eq v1, v11, :cond_9

    if-eq v1, v10, :cond_9

    goto/16 :goto_d

    :cond_3
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->f()F

    move-result v2

    cmpl-float v5, v4, v14

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v5, :cond_4

    div-float v5, v4, v2

    mul-float v7, v4, v5

    mul-float/2addr v2, v5

    mul-float/2addr v2, v5

    div-float/2addr v2, v6

    sub-float/2addr v7, v2

    add-float/2addr v7, v1

    cmpl-float v1, v7, v16

    if-lez v1, :cond_5

    goto :goto_2

    :cond_4
    neg-float v5, v4

    div-float/2addr v5, v2

    mul-float v7, v4, v5

    mul-float/2addr v2, v5

    mul-float/2addr v2, v5

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    add-float/2addr v2, v1

    cmpg-float v1, v2, v14

    if-gez v1, :cond_5

    :goto_2
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->f()F

    move-result v2

    iput v4, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->a:F

    iput v1, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->b:F

    iput v2, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->c:F

    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    goto/16 :goto_d

    :cond_5
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->f()F

    move-result v6

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_6

    iget v1, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->s:F

    move v7, v1

    goto :goto_3

    :cond_6
    move v7, v14

    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/StopLogic;->b(FFFFFF)V

    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    goto/16 :goto_d

    :cond_7
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->f()F

    move-result v2

    iput v4, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->a:F

    iput v1, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->b:F

    iput v2, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->c:F

    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    goto/16 :goto_d

    :cond_8
    const/high16 v16, 0x3f800000    # 1.0f

    :cond_9
    if-eq v1, v2, :cond_c

    if-ne v1, v10, :cond_a

    goto :goto_4

    :cond_a
    if-eq v1, v12, :cond_b

    if-ne v1, v11, :cond_d

    :cond_b
    move/from16 v3, v16

    goto :goto_5

    :cond_c
    :goto_4
    move v3, v14

    :cond_d
    :goto_5
    if-eqz v6, :cond_e

    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_e

    iget v1, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->D:I

    goto :goto_6

    :cond_e
    move v1, v13

    :goto_6
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    move v9, v1

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/utils/StopLogic;

    if-nez v9, :cond_10

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->f()F

    move-result v6

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v5, :cond_f

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v5, :cond_f

    iget v14, v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->s:F

    :cond_f
    move v5, v7

    move v7, v14

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/StopLogic;->b(FFFFFF)V

    goto :goto_c

    :cond_10
    if-eqz v6, :cond_11

    iget-object v4, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v4, :cond_11

    iget v4, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->z:F

    goto :goto_7

    :cond_11
    move v4, v14

    :goto_7
    if-eqz v6, :cond_12

    iget-object v5, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v5, :cond_12

    iget v5, v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->A:F

    goto :goto_8

    :cond_12
    move v5, v14

    :goto_8
    if-eqz v6, :cond_13

    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v7, :cond_13

    iget v7, v7, Landroidx/constraintlayout/motion/widget/TouchResponse;->y:F

    goto :goto_9

    :cond_13
    move v7, v14

    :goto_9
    if-eqz v6, :cond_14

    iget-object v9, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v9, :cond_14

    iget v9, v9, Landroidx/constraintlayout/motion/widget/TouchResponse;->B:F

    goto :goto_a

    :cond_14
    move v9, v14

    :goto_a
    if-eqz v6, :cond_15

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v6, :cond_15

    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->C:I

    goto :goto_b

    :cond_15
    move v6, v13

    :goto_b
    iget-object v10, v1, Landroidx/constraintlayout/motion/utils/StopLogic;->b:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    if-nez v10, :cond_16

    new-instance v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    invoke-direct {v10}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;-><init>()V

    iput-object v10, v1, Landroidx/constraintlayout/motion/utils/StopLogic;->b:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    :cond_16
    iget-object v10, v1, Landroidx/constraintlayout/motion/utils/StopLogic;->b:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    iput-object v10, v1, Landroidx/constraintlayout/motion/utils/StopLogic;->c:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    float-to-double v11, v3

    iput-wide v11, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->c:D

    float-to-double v11, v7

    iput-wide v11, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->a:D

    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->e:F

    float-to-double v1, v5

    iput-wide v1, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->b:D

    iput v4, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->g:F

    iput v9, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->h:F

    iput v6, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->i:I

    iput v14, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->d:F

    :goto_c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    :goto_d
    iput-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final F(I)V
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->b:Landroidx/constraintlayout/widget/StateSet;

    if-eqz v0, :cond_2

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, p1, v3, v3}, Landroidx/constraintlayout/widget/StateSet;->a(IIFF)I

    move-result v0

    if-eq v0, v1, :cond_2

    move p1, v0

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    const/4 v3, 0x0

    if-ne v2, p1, :cond_4

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    return-void

    :cond_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, p1, :cond_5

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    return-void

    :cond_5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->D(II)V

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v1:Lw21;

    return-void

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v6, :cond_7

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    goto :goto_0

    :cond_7
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->j:I

    :goto_0
    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v5, v1, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->m(II)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    move v7, v0

    :goto_1
    if-ge v7, v5, :cond_8

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v9, v8}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v1, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v7, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v7, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->e(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B()V

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->a()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_a

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v8, :cond_9

    goto :goto_3

    :cond_9
    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v3, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iput v3, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->e:F

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->d(FFFF)V

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionController;->h:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    move v7, v0

    :goto_4
    if-ge v7, v5, :cond_c

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v8, :cond_b

    goto :goto_5

    :cond_b
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->e(Landroidx/constraintlayout/motion/widget/MotionController;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v9

    invoke-virtual {v8, p1, v2, v9, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->g(IIJ)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_d

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    goto :goto_6

    :cond_d
    move p1, v3

    :goto_6
    cmpl-float v2, p1, v3

    if-eqz v2, :cond_f

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v7, -0x800001

    move v8, v0

    :goto_7
    if-ge v8, v5, :cond_e

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    add-float/2addr v9, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    if-ge v0, v5, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    sub-float v11, v4, p1

    div-float v11, v4, v11

    iput v11, v8, Landroidx/constraintlayout/motion/widget/MotionController;->n:F

    add-float/2addr v10, v9

    sub-float/2addr v10, v2

    mul-float/2addr v10, p1

    sub-float v9, v7, v2

    div-float/2addr v10, v9

    sub-float v9, p1, v10

    iput v9, v8, Landroidx/constraintlayout/motion/widget/MotionController;->m:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final G(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->e(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B()V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-ne v0, p1, :cond_1

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    return-void
.end method

.method public final varargs H(I[Landroid/view/View;)V
    .locals 8

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p0, :cond_7

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->q:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/ViewTransition;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->a:I

    if-ne v2, p1, :cond_0

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->b(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v3, [Landroid/view/View;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Landroid/view/View;

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v3

    iget v4, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->e:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_6

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toString()Ljava/lang/String;

    goto :goto_4

    :cond_3
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    move-object v4, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    goto :goto_2

    :goto_3
    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    goto :goto_4

    :cond_6
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Z)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->q:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    if-eqz v3, :cond_2

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->e:Ljava/util/ArrayList;

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->d:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->a()V

    goto :goto_0

    :cond_1
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->d:Ljava/util/ArrayList;

    :cond_2
    :goto_1
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v3, :cond_3

    goto/16 :goto_20

    :cond_3
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    const/4 v5, 0x1

    and-int/2addr v3, v5

    const/high16 v6, 0x41300000    # 11.0f

    const/high16 v7, 0x41200000    # 10.0f

    if-ne v3, v5, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1:I

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1:J

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-eqz v3, :cond_4

    sub-long v10, v8, v10

    const-wide/32 v12, 0xbebc200

    cmp-long v3, v10, v12

    if-lez v3, :cond_5

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1:I

    int-to-float v3, v3

    long-to-float v10, v10

    const v11, 0x3089705f    # 1.0E-9f

    mul-float/2addr v10, v11

    div-float/2addr v3, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v3, v10

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h1:F

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1:I

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1:J

    goto :goto_2

    :cond_4
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1:J

    :cond_5
    :goto_2
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v8, 0x42280000    # 42.0f

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h1:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " fps "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    const-string v11, "UNDEFINED"

    const/4 v12, -0x1

    if-ne v10, v12, :cond_6

    move-object v10, v11

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    :goto_3
    const-string v13, " -> "

    invoke-static {v10, v13, v9}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne v10, v12, :cond_7

    move-object v10, v11

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " ) state="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-ne v8, v12, :cond_8

    const-string v8, "undefined"

    goto :goto_6

    :cond_8
    if-ne v8, v12, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v11

    :goto_5
    move-object v8, v11

    :goto_6
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, -0x1000000

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1d

    int-to-float v9, v9

    invoke-virtual {v1, v8, v6, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v9, -0x77ff78

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1e

    int-to-float v9, v9

    invoke-virtual {v1, v8, v7, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    if-le v3, v5, :cond_34

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    if-nez v3, :cond_b

    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    invoke-direct {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    :cond_b
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v9, :cond_c

    iget v8, v9, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    goto :goto_7

    :cond_c
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionScene;->j:I

    :goto_7
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->g:Landroid/graphics/Paint;

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->f:Landroid/graphics/Paint;

    iget-object v12, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->i:Landroid/graphics/Paint;

    iget v13, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->m:I

    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->e:Landroid/graphics/Paint;

    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->n:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v16

    if-nez v16, :cond_d

    goto/16 :goto_20

    :cond_d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v15}, Landroid/view/View;->isInEditMode()Z

    move-result v16

    move/from16 v17, v2

    const/4 v2, 0x2

    if-nez v16, :cond_e

    and-int/lit8 v4, v9, 0x1

    if-ne v4, v2, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v5, v15, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1d

    int-to-float v4, v4

    invoke-virtual {v1, v2, v6, v4, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_e
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->c:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->c:I

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_9

    :cond_f
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->c:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v9, :cond_10

    if-nez v6, :cond_10

    const/4 v6, 0x1

    :cond_10
    if-nez v6, :cond_11

    goto :goto_8

    :cond_11
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->c:[F

    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->b:[I

    if-eqz v7, :cond_14

    move-object/from16 v26, v0

    iget-object v0, v2, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v0, v0, v17

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->f()[D

    move-result-object v0

    if-eqz v15, :cond_12

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v20, v17

    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v27, v5

    move-object/from16 v5, v21

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionPaths;

    add-int/lit8 v21, v20, 0x1

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->p:I

    aput v5, v15, v20

    move/from16 v20, v21

    move-object/from16 v5, v27

    goto :goto_a

    :cond_12
    move-object/from16 v27, v5

    move/from16 v5, v17

    move/from16 v25, v5

    :goto_b
    array-length v15, v0

    if-ge v5, v15, :cond_13

    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v15, v15, v17

    move-object/from16 v24, v7

    move/from16 v28, v8

    aget-wide v7, v0, v5

    move-object/from16 v29, v0

    iget-object v0, v2, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    invoke-virtual {v15, v7, v8, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->c(D[D)V

    iget-object v0, v2, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aget-wide v20, v29, v5

    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    move-object/from16 v19, v0

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Landroidx/constraintlayout/motion/widget/MotionPaths;->c(D[I[D[FI)V

    add-int/lit8 v25, v25, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v24

    move/from16 v8, v28

    move-object/from16 v0, v29

    goto :goto_b

    :cond_13
    move/from16 v28, v8

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    goto :goto_c

    :cond_14
    move-object/from16 v26, v0

    move-object/from16 v27, v5

    move/from16 v28, v8

    move/from16 v0, v17

    :goto_c
    iput v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->k:I

    const/4 v0, 0x1

    if-lt v6, v0, :cond_32

    div-int/lit8 v8, v28, 0x10

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->a:[F

    if-eqz v0, :cond_15

    array-length v0, v0

    mul-int/lit8 v5, v8, 0x2

    if-eq v0, v5, :cond_16

    :cond_15
    mul-int/lit8 v0, v8, 0x2

    new-array v0, v0, [F

    iput-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->a:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->d:Landroid/graphics/Path;

    :cond_16
    int-to-float v0, v13

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x77000000

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->a:[F

    add-int/lit8 v5, v8, -0x1

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v5, v7, v5

    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    move/from16 v29, v7

    const-string v7, "translationX"

    if-nez v15, :cond_17

    const/4 v15, 0x0

    :goto_d
    move-object/from16 v24, v0

    goto :goto_e

    :cond_17
    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    goto :goto_d

    :goto_e
    iget-object v0, v2, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    move/from16 v30, v5

    const-string v5, "translationY"

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_f
    move/from16 v31, v9

    goto :goto_10

    :cond_18
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    goto :goto_f

    :goto_10
    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/MotionController;->z:Ljava/util/HashMap;

    if-nez v9, :cond_19

    const/4 v7, 0x0

    goto :goto_11

    :cond_19
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    :goto_11
    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/MotionController;->z:Ljava/util/HashMap;

    if-nez v9, :cond_1a

    const/4 v5, 0x0

    goto :goto_12

    :cond_1a
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    :goto_12
    move/from16 v9, v17

    :goto_13
    const/high16 v19, 0x7fc00000    # Float.NaN

    const/16 v20, 0x0

    if-ge v9, v8, :cond_29

    move/from16 v32, v8

    int-to-float v8, v9

    mul-float v8, v8, v30

    move/from16 v21, v8

    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionController;->n:F

    cmpl-float v22, v8, v29

    if-eqz v22, :cond_1d

    move/from16 v22, v8

    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionController;->m:F

    cmpg-float v23, v21, v8

    if-gez v23, :cond_1b

    move/from16 v23, v8

    move/from16 v8, v20

    goto :goto_14

    :cond_1b
    move/from16 v23, v8

    move/from16 v8, v21

    :goto_14
    cmpl-float v21, v8, v23

    move/from16 v34, v9

    move-object/from16 v33, v10

    if-lez v21, :cond_1c

    float-to-double v9, v8

    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v9, v35

    if-gez v9, :cond_1c

    sub-float v8, v8, v23

    mul-float v8, v8, v22

    move/from16 v9, v29

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    goto :goto_15

    :cond_1c
    move/from16 v9, v29

    goto :goto_15

    :cond_1d
    move/from16 v34, v9

    move-object/from16 v33, v10

    move/from16 v8, v21

    :goto_15
    float-to-double v9, v8

    move-wide/from16 v21, v9

    iget-object v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v25, v10

    move-object/from16 v10, v23

    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v35, v4

    iget-object v4, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v4, :cond_1f

    move-object/from16 v23, v4

    iget v4, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    cmpg-float v36, v4, v8

    if-gez v36, :cond_1e

    move/from16 v20, v4

    move-object/from16 v9, v23

    goto :goto_17

    :cond_1e
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget v4, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    move/from16 v19, v4

    :cond_1f
    :goto_17
    move-object/from16 v10, v25

    move-object/from16 v4, v35

    goto :goto_16

    :cond_20
    move-object/from16 v35, v4

    if-eqz v9, :cond_22

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_21

    const/high16 v19, 0x3f800000    # 1.0f

    :cond_21
    sub-float v4, v8, v20

    sub-float v19, v19, v20

    div-float v4, v4, v19

    move-object v10, v12

    move/from16 v36, v13

    float-to-double v12, v4

    invoke-virtual {v9, v12, v13}, Landroidx/constraintlayout/core/motion/utils/Easing;->a(D)D

    move-result-wide v12

    double-to-float v4, v12

    mul-float v4, v4, v19

    add-float v4, v4, v20

    float-to-double v12, v4

    goto :goto_18

    :cond_22
    move-object v10, v12

    move/from16 v36, v13

    move-wide/from16 v12, v21

    :goto_18
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v4, v4, v17

    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    invoke-virtual {v4, v12, v13, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->c(D[D)V

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionController;->k:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    if-eqz v4, :cond_23

    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    move-object/from16 v37, v10

    array-length v10, v9

    if-lez v10, :cond_24

    invoke-virtual {v4, v12, v13, v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->c(D[D)V

    goto :goto_19

    :cond_23
    move-object/from16 v37, v10

    :cond_24
    :goto_19
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    mul-int/lit8 v25, v34, 0x2

    move-object/from16 v19, v4

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-wide/from16 v20, v12

    invoke-virtual/range {v19 .. v25}, Landroidx/constraintlayout/motion/widget/MotionPaths;->c(D[I[D[FI)V

    if-eqz v7, :cond_25

    aget v4, v24, v25

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->a(F)F

    move-result v9

    add-float/2addr v9, v4

    aput v9, v24, v25

    goto :goto_1a

    :cond_25
    if-eqz v15, :cond_26

    aget v4, v24, v25

    invoke-virtual {v15, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->a(F)F

    move-result v9

    add-float/2addr v9, v4

    aput v9, v24, v25

    :cond_26
    :goto_1a
    if-eqz v5, :cond_27

    add-int/lit8 v25, v25, 0x1

    aget v4, v24, v25

    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->a(F)F

    move-result v8

    add-float/2addr v8, v4

    aput v8, v24, v25

    goto :goto_1b

    :cond_27
    if-eqz v0, :cond_28

    add-int/lit8 v25, v25, 0x1

    aget v4, v24, v25

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->a(F)F

    move-result v8

    add-float/2addr v8, v4

    aput v8, v24, v25

    :cond_28
    :goto_1b
    add-int/lit8 v9, v34, 0x1

    move/from16 v8, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v35

    move/from16 v13, v36

    move-object/from16 v12, v37

    const/high16 v29, 0x3f800000    # 1.0f

    goto/16 :goto_13

    :cond_29
    move-object/from16 v35, v4

    move-object/from16 v33, v10

    move-object/from16 v37, v12

    move/from16 v36, v13

    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->k:I

    invoke-virtual {v3, v1, v6, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->a(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    const/16 v0, -0x55cd

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v0, -0x1f8a66

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v10, v37

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v0, -0xcc5600

    move-object/from16 v4, v33

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v36

    neg-int v5, v0

    int-to-float v5, v5

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->k:I

    invoke-virtual {v3, v1, v6, v5, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->a(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    const/4 v5, 0x5

    if-ne v6, v5, :cond_31

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->j:[F

    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->d:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    move/from16 v7, v17

    :goto_1c
    const/16 v9, 0x32

    if-gt v7, v9, :cond_30

    int-to-float v9, v7

    const/high16 v12, 0x42480000    # 50.0f

    div-float/2addr v9, v12

    const/4 v12, 0x0

    invoke-virtual {v2, v9, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->a(F[F)F

    move-result v9

    iget-object v13, v2, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v13, v13, v17

    move v15, v5

    move-object/from16 v16, v6

    float-to-double v5, v9

    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    invoke-virtual {v13, v5, v6, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->c(D[D)V

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    move-object/from16 v9, v35

    iget v13, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v12, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    move/from16 v22, v15

    iget v15, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    const/high16 v23, 0x40000000    # 2.0f

    iget v8, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    move/from16 v36, v0

    move-object/from16 v24, v2

    move/from16 v0, v17

    :goto_1d
    array-length v2, v5

    move-object/from16 v33, v4

    if-ge v0, v2, :cond_2e

    move-object v2, v5

    aget-wide v4, v6, v0

    double-to-float v4, v4

    aget v5, v2, v0

    move/from16 v29, v0

    const/4 v0, 0x1

    if-eq v5, v0, :cond_2d

    const/4 v0, 0x2

    if-eq v5, v0, :cond_2c

    const/4 v0, 0x3

    if-eq v5, v0, :cond_2b

    const/4 v0, 0x4

    if-eq v5, v0, :cond_2a

    goto :goto_1e

    :cond_2a
    move v8, v4

    goto :goto_1e

    :cond_2b
    move v15, v4

    goto :goto_1e

    :cond_2c
    move v12, v4

    goto :goto_1e

    :cond_2d
    move v13, v4

    :goto_1e
    add-int/lit8 v0, v29, 0x1

    move-object v5, v2

    move-object/from16 v4, v33

    goto :goto_1d

    :cond_2e
    iget-object v0, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->n:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_2f

    float-to-double v4, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v29, v29, v4

    const-wide/16 v34, 0x0

    add-double v29, v29, v34

    div-float v0, v15, v23

    move-wide/from16 v37, v4

    float-to-double v4, v0

    sub-double v4, v29, v4

    double-to-float v0, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v37

    sub-double v34, v34, v4

    div-float v2, v8, v23

    float-to-double v4, v2

    sub-double v4, v34, v4

    double-to-float v12, v4

    move v13, v0

    :cond_2f
    add-float/2addr v15, v13

    add-float/2addr v8, v12

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    add-float v13, v13, v20

    add-float v12, v12, v20

    add-float v15, v15, v20

    add-float v8, v8, v20

    aput v13, v16, v17

    const/16 v18, 0x1

    aput v12, v16, v18

    const/4 v0, 0x2

    aput v15, v16, v0

    const/16 v25, 0x3

    aput v12, v16, v25

    const/16 v27, 0x4

    aput v15, v16, v27

    aput v8, v16, v22

    const/4 v2, 0x6

    aput v13, v16, v2

    const/4 v4, 0x7

    aput v8, v16, v4

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->d:Landroid/graphics/Path;

    invoke-virtual {v5, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->d:Landroid/graphics/Path;

    aget v6, v16, v0

    aget v8, v16, v25

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->d:Landroid/graphics/Path;

    const/16 v27, 0x4

    aget v6, v16, v27

    aget v8, v16, v22

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->d:Landroid/graphics/Path;

    aget v2, v16, v2

    aget v4, v16, v4

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->d:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v35, v9

    move-object/from16 v6, v16

    move/from16 v5, v22

    move-object/from16 v2, v24

    move-object/from16 v4, v33

    move/from16 v0, v36

    goto/16 :goto_1c

    :cond_30
    move/from16 v36, v0

    move-object/from16 v33, v4

    const/4 v0, 0x2

    const/16 v18, 0x1

    const/high16 v23, 0x40000000    # 2.0f

    const/high16 v2, 0x44000000    # 512.0f

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, v23

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->d:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x10000

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->d:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1f

    :cond_31
    move/from16 v36, v0

    move-object/from16 v33, v4

    const/4 v0, 0x2

    const/16 v18, 0x1

    goto :goto_1f

    :cond_32
    move/from16 v18, v0

    move/from16 v31, v9

    move-object/from16 v33, v10

    move-object v10, v12

    move/from16 v36, v13

    const/4 v0, 0x2

    :goto_1f
    move-object v12, v10

    move-object/from16 v0, v26

    move/from16 v8, v28

    move/from16 v9, v31

    move-object/from16 v10, v33

    move/from16 v13, v36

    goto/16 :goto_8

    :cond_33
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_34
    :goto_20
    return-void
.end method

.method public final g(ILandroid/view/View;)V
    .locals 9

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p1, :cond_4

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:F

    div-float/2addr v1, p2

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:F

    div-float/2addr p0, p2

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p1, :cond_4

    iget-object v7, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->n:[F

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    iget-object v8, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v4

    iget-object v2, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    iget v5, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->h:F

    iget v6, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->g:F

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    iget v2, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    aget p2, v7, p2

    iget v3, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->l:F

    const/4 v5, 0x1

    aget v5, v7, v5

    cmpl-float v6, v2, v0

    if-eqz v6, :cond_1

    mul-float/2addr v1, v2

    div-float/2addr v1, p2

    goto :goto_0

    :cond_1
    mul-float/2addr p0, v3

    div-float v1, p0, v5

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_2

    const/high16 p0, 0x40400000    # 3.0f

    div-float p0, v1, p0

    add-float/2addr v4, p0

    :cond_2
    cmpl-float p0, v4, v0

    if-eqz p0, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p2, v4, p0

    if-eqz p2, :cond_4

    iget p1, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->c:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    float-to-double v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, v2, v4

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, p0

    :goto_1
    invoke-virtual {v8, v0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E(FFI)V

    :cond_4
    :goto_2
    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 4

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->g:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCurrentState()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    return p0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/DesignTool;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Landroidx/constraintlayout/motion/widget/DesignTool;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/DesignTool;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/DesignTool;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Landroidx/constraintlayout/motion/widget/DesignTool;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Landroidx/constraintlayout/motion/widget/DesignTool;

    return-object p0
.end method

.method public getEndState()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    return p0
.end method

.method public getNanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    return p0
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/MotionScene;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    return-object p0
.end method

.method public getStartState()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    return p0
.end method

.method public getTargetPosition()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    return p0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->b:F

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a:F

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "motion.progress"

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "motion.velocity"

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "motion.StartState"

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "motion.EndState"

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v2, :cond_0

    iget v0, v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->j:I

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    :cond_1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    mul-float/2addr p0, v1

    float-to-long v0, p0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    return p0
.end method

.method public final h(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    return-void
.end method

.method public final j(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:F

    return-void
.end method

.method public final k(Landroid/view/View;II[II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v5, :cond_15

    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v7, -0x1

    if-nez v6, :cond_2

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v6, :cond_2

    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->e:I

    if-eq v6, v7, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v8

    if-eq v8, v6, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v6, :cond_3

    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->u:Z

    goto :goto_0

    :cond_3
    move v6, v8

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eqz v6, :cond_6

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v6, :cond_4

    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->w:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_4

    move v7, v3

    :cond_4
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    cmpl-float v11, v6, v9

    if-eqz v11, :cond_5

    cmpl-float v6, v6, v10

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {v1, v7}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    const/4 v6, 0x1

    if-eqz v5, :cond_d

    iget v5, v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->w:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    int-to-float v5, v2

    int-to-float v7, v3

    iget-object v11, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v11, :cond_a

    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v11, :cond_a

    iget-object v12, v11, Landroidx/constraintlayout/motion/widget/TouchResponse;->n:[F

    iget-object v13, v11, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v14

    move-object/from16 v17, v12

    iget-object v12, v11, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v13, v11, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    iget v15, v11, Landroidx/constraintlayout/motion/widget/TouchResponse;->h:F

    move/from16 p5, v10

    iget v10, v11, Landroidx/constraintlayout/motion/widget/TouchResponse;->g:F

    move/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    iget v10, v11, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    cmpl-float v12, v10, p5

    const v13, 0x33d6bf95    # 1.0E-7f

    if-eqz v12, :cond_8

    aget v7, v17, v8

    cmpl-float v7, v7, p5

    if-nez v7, :cond_7

    aput v13, v17, v8

    :cond_7
    mul-float/2addr v5, v10

    aget v7, v17, v8

    div-float/2addr v5, v7

    goto :goto_1

    :cond_8
    aget v5, v17, v6

    cmpl-float v5, v5, p5

    if-nez v5, :cond_9

    aput v13, v17, v6

    :cond_9
    iget v5, v11, Landroidx/constraintlayout/motion/widget/TouchResponse;->l:F

    mul-float/2addr v7, v5

    aget v5, v17, v6

    div-float v5, v7, v5

    goto :goto_1

    :cond_a
    move/from16 p5, v10

    move/from16 v5, p5

    :goto_1
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpg-float v10, v7, p5

    if-gtz v10, :cond_b

    cmpg-float v10, v5, p5

    if-ltz v10, :cond_c

    :cond_b
    cmpl-float v7, v7, v9

    if-ltz v7, :cond_e

    cmpl-float v5, v5, p5

    if-lez v5, :cond_e

    :cond_c
    invoke-virtual {v1, v8}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$3;

    invoke-direct {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$3;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_d
    move/from16 p5, v10

    :cond_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v10

    int-to-float v5, v2

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:F

    int-to-float v7, v3

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:F

    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:J

    sub-long v12, v10, v12

    long-to-double v12, v12

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v12, v14

    double-to-float v12, v12

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:F

    iput-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:J

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v4, :cond_12

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v4, :cond_12

    iget-object v15, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->n:[F

    iget-object v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v12

    iget-boolean v11, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    if-nez v11, :cond_f

    iput-boolean v6, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    invoke-virtual {v10, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_f
    move-object v11, v10

    iget-object v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v13, v11

    iget v11, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    move-object v14, v13

    iget v13, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->h:F

    move-object/from16 v16, v14

    iget v14, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->g:F

    move-object/from16 p1, v16

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    aget v11, v15, v8

    mul-float/2addr v10, v11

    iget v11, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->l:F

    aget v13, v15, v6

    mul-float/2addr v11, v13

    add-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v10, v10, v13

    if-gez v10, :cond_10

    const v10, 0x3c23d70a    # 0.01f

    aput v10, v15, v8

    aput v10, v15, v6

    :cond_10
    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    cmpl-float v11, v10, p5

    if-eqz v11, :cond_11

    mul-float/2addr v5, v10

    aget v4, v15, v8

    div-float/2addr v5, v4

    goto :goto_2

    :cond_11
    iget v4, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->l:F

    mul-float/2addr v7, v4

    aget v4, v15, v6

    div-float v5, v7, v4

    :goto_2
    add-float/2addr v12, v5

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move/from16 v5, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v5

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_12

    move-object/from16 v11, p1

    invoke-virtual {v11, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_12
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_13

    aput v2, p4, v8

    aput v3, p4, v6

    :cond_13
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Z)V

    aget v1, p4, v8

    if-nez v1, :cond_14

    aget v1, p4, v6

    if-eqz v1, :cond_15

    :cond_14
    iput-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    :cond_15
    :goto_3
    return-void
.end method

.method public final m(Landroid/view/View;IIIII[I)V
    .locals 0

    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    return-void
.end method

.method public final n(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public final o(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p0, :cond_1

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->w:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_6

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->g:Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    :goto_1
    if-lez v6, :cond_3

    if-ne v6, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v7, -0x1

    if-gez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    move v7, v8

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v4, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->l(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    :cond_6
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x1:Z

    if-eqz v1, :cond_7

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$4;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$4;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a()V

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_9

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v1:Lw21;

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_9
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v1, :cond_0

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    if-nez v3, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_9

    :cond_1
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->q:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    const/4 v1, -0x1

    if-eqz v5, :cond_11

    iget-object v3, v5, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->b:Ljava/util/ArrayList;

    iget-object v4, v5, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v7

    if-ne v7, v1, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->c:Ljava/util/HashSet;

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->c:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/ViewTransition;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_3

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/motion/widget/ViewTransition;->c(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    iget-object v12, v5, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->c:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->d:Ljava/util/ArrayList;

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->l:Landroid/graphics/Rect;

    if-eq v13, v15, :cond_7

    if-eq v13, v14, :cond_6

    const/16 v16, 0x0

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->c:Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionController;->b:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v2, v10

    float-to-int v1, v11

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->h:Z

    if-nez v1, :cond_8

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->b()V

    goto :goto_2

    :cond_7
    const/16 v16, 0x0

    iget-boolean v1, v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->h:Z

    if-nez v1, :cond_8

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->b()V

    :cond_8
    :goto_2
    const/4 v1, -0x1

    goto :goto_1

    :cond_9
    const/16 v16, 0x0

    if-eqz v13, :cond_a

    if-eq v13, v15, :cond_a

    goto :goto_8

    :cond_a
    iget-object v1, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :goto_3
    move-object v8, v1

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    goto :goto_3

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/constraintlayout/motion/widget/ViewTransition;

    iget v2, v4, Landroidx/constraintlayout/motion/widget/ViewTransition;->b:I

    if-ne v2, v15, :cond_d

    if-nez v13, :cond_c

    goto :goto_5

    :cond_d
    if-ne v2, v14, :cond_e

    if-ne v13, v15, :cond_c

    goto :goto_5

    :cond_e
    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    if-nez v13, :cond_c

    :goto_5
    iget-object v2, v5, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/ViewTransition;->c(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v3, v12}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v6, v10

    float-to-int v9, v11

    invoke-virtual {v12, v6, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    filled-new-array {v3}, [Landroid/view/View;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    goto :goto_6

    :cond_11
    :goto_7
    const/16 v16, 0x0

    :cond_12
    :goto_8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v1, :cond_16

    iget-boolean v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    if-nez v2, :cond_16

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_9

    :cond_13
    iget v1, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v1, :cond_15

    :cond_14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    :cond_15
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B1:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C1:Landroid/view/View;

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_16
    :goto_9
    return v16
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t1:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t1:Z

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-eq p1, p5, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B()V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Z)V

    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:I

    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t1:Z

    return-void

    :goto_0
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t1:Z

    throw p1
.end method

.method public final onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v3, :cond_0

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A1:Z

    if-eqz v6, :cond_3

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A1:Z

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z()V

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A()V

    move v3, v5

    :cond_3
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    if-eqz v6, :cond_4

    move v3, v5

    :cond_4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->g()I

    move-result v6

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v8, -0x1

    if-nez v7, :cond_5

    move v7, v8

    goto :goto_2

    :cond_5
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    :goto_2
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    if-nez v3, :cond_6

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->e:I

    if-ne v6, v10, :cond_6

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->f:I

    if-eq v7, v10, :cond_7

    :cond_6
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-eq v10, v8, :cond_7

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->e(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->f()V

    iput v6, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->e:I

    iput v7, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->f:I

    move v1, v4

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    :cond_8
    move v1, v5

    :goto_3
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_e

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v1

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p1:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_a

    if-nez v2, :cond_b

    :cond_a
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l1:I

    int-to-float v6, v2

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r1:F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n1:I

    sub-int/2addr v8, v2

    int-to-float v2, v8

    mul-float/2addr v7, v2

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_b
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q1:I

    if-eq v2, v3, :cond_c

    if-nez v2, :cond_d

    :cond_c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m1:I

    int-to-float v2, v1

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r1:F

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o1:I

    sub-int/2addr v7, v1

    int-to-float v1, v7

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_d
    invoke-virtual {v0, v6, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    instance-of v7, v6, Landroidx/constraintlayout/motion/utils/StopLogic;

    const v8, 0x3089705f    # 1.0E-9f

    const/4 v9, 0x0

    if-nez v7, :cond_f

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    sub-long v10, v2, v10

    long-to-float v7, v10

    mul-float/2addr v7, v1

    mul-float/2addr v7, v8

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    div-float/2addr v7, v10

    goto :goto_4

    :cond_f
    move v7, v9

    :goto_4
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    add-float/2addr v10, v7

    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    if-eqz v7, :cond_10

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    :cond_10
    cmpl-float v7, v1, v9

    if-lez v7, :cond_11

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v11, v10, v11

    if-gez v11, :cond_12

    :cond_11
    cmpg-float v11, v1, v9

    if-gtz v11, :cond_13

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_13

    :cond_12
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    goto :goto_5

    :cond_13
    move v5, v4

    :goto_5
    if-eqz v6, :cond_15

    if-nez v5, :cond_15

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v5, :cond_14

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    sub-long/2addr v2, v10

    long-to-float v2, v2

    mul-float/2addr v2, v8

    invoke-interface {v6, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    goto :goto_6

    :cond_14
    invoke-interface {v6, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    :cond_15
    :goto_6
    if-lez v7, :cond_16

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v2, v10, v2

    if-gez v2, :cond_17

    :cond_16
    cmpg-float v1, v1, v9

    if-gtz v1, :cond_18

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v1, v10, v1

    if-gtz v1, :cond_18

    :cond_17
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    :cond_18
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r1:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v13

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_19

    :goto_7
    move v12, v10

    goto :goto_8

    :cond_19
    invoke-interface {v2, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    goto :goto_7

    :goto_8
    if-ge v4, v1, :cond_1b

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v11, :cond_1a

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s1:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionController;->d(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1b
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1:Z

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1c
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->f()Z

    move-result p0

    iput-boolean p0, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->p:Z

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->c(Z)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v2, :cond_63

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    if-eqz v3, :cond_63

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->n()Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    if-eqz v3, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    iput-object v6, v7, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    iput-object v7, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    :cond_1
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    const/4 v9, 0x2

    const/4 v10, -0x1

    if-eq v3, v10, :cond_19

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-eqz v12, :cond_16

    if-eq v12, v9, :cond_3

    goto/16 :goto_a

    :cond_3
    iget-boolean v12, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->m:Z

    if-eqz v12, :cond_4

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->s:F

    sub-float/2addr v12, v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->r:F

    sub-float/2addr v13, v14

    float-to-double v14, v13

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_5

    float-to-double v14, v12

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_61

    :cond_5
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:Landroid/view/MotionEvent;

    if-nez v14, :cond_6

    goto/16 :goto_2e

    :cond_6
    if-eq v3, v10, :cond_13

    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->b:Landroidx/constraintlayout/widget/StateSet;

    if-eqz v15, :cond_7

    invoke-virtual {v15, v3}, Landroidx/constraintlayout/widget/StateSet;->b(I)I

    move-result v15

    if-eq v15, v10, :cond_7

    goto :goto_0

    :cond_7
    move v15, v3

    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget v8, v9, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    if-eq v8, v15, :cond_8

    iget v8, v9, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    if-ne v8, v15, :cond_9

    :cond_8
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v9, 0x2

    goto :goto_1

    :cond_a
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-boolean v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    if-eqz v6, :cond_b

    move-object/from16 v21, v7

    goto :goto_3

    :cond_b
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v6, :cond_11

    iget-boolean v11, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->p:Z

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/motion/widget/TouchResponse;->c(Z)V

    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v6, v4, v8}, Landroidx/constraintlayout/motion/widget/TouchResponse;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v21, v7

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v11, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_c
    move-object/from16 v21, v7

    :cond_d
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v6, v4, v8}, Landroidx/constraintlayout/motion/widget/TouchResponse;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v6, v7, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_e

    :goto_3
    move-object/from16 v7, v21

    goto :goto_2

    :cond_e
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    iget v7, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    mul-float/2addr v7, v13

    iget v11, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->l:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v7

    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->j:Z

    if-eqz v6, :cond_f

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move/from16 v22, v7

    iget-object v7, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float v11, v11, v22

    add-float v7, v13, v6

    move-object/from16 v22, v8

    add-float v8, v12, v11

    move/from16 v23, v9

    float-to-double v8, v8

    move/from16 v24, v12

    move/from16 v25, v13

    float-to-double v12, v7

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    float-to-double v12, v6

    move-wide/from16 v26, v7

    float-to-double v6, v11

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v7, v26, v6

    double-to-float v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v11, v6, v7

    goto :goto_4

    :cond_f
    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v12

    move/from16 v25, v13

    :goto_4
    iget v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    if-ne v6, v3, :cond_10

    const/high16 v6, -0x40800000    # -1.0f

    :goto_5
    mul-float/2addr v11, v6

    goto :goto_6

    :cond_10
    const v6, 0x3f8ccccd    # 1.1f

    goto :goto_5

    :goto_6
    cmpl-float v6, v11, v23

    if-lez v6, :cond_12

    move v9, v11

    move-object v10, v15

    goto :goto_7

    :cond_11
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v12

    move/from16 v25, v13

    :cond_12
    move/from16 v9, v23

    :goto_7
    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v12, v24

    move/from16 v13, v25

    goto/16 :goto_2

    :cond_13
    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    :cond_14
    if-eqz v10, :cond_19

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/motion/widget/TouchResponse;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_8

    :cond_15
    const/4 v3, 0x0

    :goto_8
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->n:Z

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->r:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->s:F

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->p:F

    iput v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->q:F

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    goto :goto_a

    :cond_16
    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->r:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->s:F

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:Landroid/view/MotionEvent;

    iput-boolean v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->m:Z

    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_61

    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/motion/widget/TouchResponse;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->m:Z

    goto/16 :goto_2e

    :cond_17
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/motion/widget/TouchResponse;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->n:Z

    goto :goto_9

    :cond_18
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->n:Z

    :goto_9
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->r:F

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->s:F

    iput v3, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->p:F

    iput v2, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->q:F

    goto/16 :goto_2e

    :cond_19
    :goto_a
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->m:Z

    if-eqz v3, :cond_1a

    goto/16 :goto_2e

    :cond_1a
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v3, :cond_5f

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v3, :cond_5f

    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->n:[F

    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->n:Z

    if-nez v4, :cond_5f

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->j:Z

    const/4 v13, 0x3

    const/high16 v21, 0x40400000    # 3.0f

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v5, :cond_3d

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->o:[I

    move-object v12, v4

    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    iget-object v4, v12, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_1b

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_3c

    const/high16 v24, 0x43b40000    # 360.0f

    const/high16 v25, 0x40000000    # 2.0f

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2c

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1c

    goto/16 :goto_2c

    :cond_1c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v25

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v25

    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->i:I

    const/4 v13, -0x1

    if-eq v7, v13, :cond_1d

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v10, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v20, 0x0

    aget v6, v5, v20

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v13, v7

    int-to-float v7, v13

    div-float v7, v7, v25

    add-float/2addr v6, v7

    const/16 v18, 0x1

    aget v5, v5, v18

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v7

    int-to-float v4, v4

    div-float v4, v4, v25

    add-float/2addr v4, v5

    move/from16 v32, v6

    move v6, v4

    move/from16 v4, v32

    goto :goto_b

    :cond_1d
    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    const/4 v13, -0x1

    if-eq v7, v13, :cond_1f

    iget-object v13, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1e

    goto :goto_b

    :cond_1e
    invoke-virtual {v10, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v20, 0x0

    aget v4, v5, v20

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v13, v6

    int-to-float v6, v13

    div-float v6, v6, v25

    add-float/2addr v4, v6

    const/16 v18, 0x1

    aget v5, v5, v18

    int-to-float v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v6, v7

    div-float v6, v6, v25

    add-float/2addr v6, v5

    :cond_1f
    :goto_b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float v13, v5, v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v7, v6

    move-object/from16 v19, v9

    float-to-double v8, v7

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float/2addr v7, v4

    const-wide v28, 0x3f847ae147ae147bL    # 0.01

    float-to-double v14, v7

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->q:F

    sub-float/2addr v7, v6

    float-to-double v6, v7

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->p:F

    sub-float/2addr v8, v4

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v6, v14, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v4, v6

    const/high16 v6, 0x43a50000    # 330.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_21

    sub-float v4, v4, v24

    :cond_20
    :goto_c
    move/from16 v21, v4

    goto :goto_d

    :cond_21
    const/high16 v6, -0x3c5b0000    # -330.0f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_20

    add-float v4, v4, v24

    goto :goto_c

    :goto_d
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v6, v4

    cmpl-double v4, v6, v28

    if-gtz v4, :cond_22

    iget-boolean v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    if-eqz v4, :cond_5f

    :cond_22
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget-boolean v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    if-nez v4, :cond_23

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    invoke-virtual {v10, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_e
    move v7, v5

    goto :goto_f

    :cond_23
    const/4 v4, 0x1

    goto :goto_e

    :goto_f
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_24

    move/from16 v18, v4

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move v8, v7

    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->h:F

    move v9, v8

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->g:F

    move/from16 v30, v9

    move-object/from16 v9, v19

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    aget v4, v9, v18

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v9, v18

    goto :goto_10

    :cond_24
    move/from16 v18, v4

    move/from16 v30, v7

    move-object/from16 v9, v19

    aput v24, v9, v18

    :goto_10
    iget v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->v:F

    mul-float v21, v21, v4

    aget v4, v9, v18

    div-float v21, v21, v4

    add-float v4, v21, v6

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    cmpl-float v7, v4, v6

    if-eqz v7, :cond_2b

    cmpl-float v7, v6, v5

    if-eqz v7, :cond_25

    cmpl-float v5, v6, v11

    if-nez v5, :cond_27

    :cond_25
    if-nez v7, :cond_26

    const/4 v11, 0x1

    goto :goto_11

    :cond_26
    const/4 v11, 0x0

    :goto_11
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(Z)V

    :cond_27
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v4, v12, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_28

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_28
    iget-object v4, v12, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    goto :goto_12

    :cond_29
    const/4 v4, 0x0

    :goto_12
    iget-object v5, v12, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    goto :goto_13

    :cond_2a
    const/4 v7, 0x0

    :goto_13
    float-to-double v5, v7

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    sub-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    float-to-double v6, v13

    move/from16 v8, v30

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    goto :goto_14

    :cond_2b
    iput v5, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    :goto_14
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->p:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->q:F

    goto/16 :goto_2c

    :cond_2c
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    iget-object v4, v12, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2d

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_2d
    iget-object v4, v12, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    move v14, v4

    goto :goto_15

    :cond_2e
    const/4 v14, 0x0

    :goto_15
    iget-object v4, v12, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    move v12, v4

    goto :goto_16

    :cond_2f
    const/4 v12, 0x0

    :goto_16
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v25

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v25

    iget v15, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->i:I

    const/4 v7, -0x1

    if-eq v15, v7, :cond_30

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v10, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v20, 0x0

    aget v7, v5, v20

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v15

    add-int/2addr v15, v8

    int-to-float v8, v15

    div-float v8, v8, v25

    add-float/2addr v7, v8

    const/16 v18, 0x1

    aget v5, v5, v18

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    :goto_17
    add-int/2addr v4, v8

    int-to-float v4, v4

    div-float v4, v4, v25

    add-float v8, v4, v5

    move v4, v7

    goto :goto_18

    :cond_30
    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    const/4 v15, -0x1

    if-eq v7, v15, :cond_31

    iget-object v4, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v10, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v20, 0x0

    aget v7, v5, v20

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v15

    add-int/2addr v15, v8

    int-to-float v8, v15

    div-float v8, v8, v25

    add-float/2addr v7, v8

    const/16 v18, 0x1

    aget v5, v5, v18

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    goto :goto_17

    :cond_31
    :goto_18
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float v15, v5, v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v4, v8

    float-to-double v7, v4

    move/from16 v25, v11

    move/from16 v20, v12

    float-to-double v11, v15

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_32

    move v7, v4

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move v8, v7

    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->h:F

    move/from16 v24, v8

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->g:F

    move/from16 v19, v24

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    const/16 v18, 0x1

    aget v4, v9, v18

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v9, v18

    goto :goto_19

    :cond_32
    move/from16 v19, v4

    const/16 v18, 0x1

    aput v24, v9, v18

    :goto_19
    add-float v4, v20, v19

    float-to-double v4, v4

    add-float/2addr v14, v15

    float-to-double v7, v14

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v4, v11

    double-to-float v4, v4

    const/high16 v5, 0x427a0000    # 62.5f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_33

    mul-float v5, v4, v21

    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->v:F

    mul-float/2addr v5, v7

    const/16 v18, 0x1

    aget v7, v9, v18

    div-float/2addr v5, v7

    add-float/2addr v5, v6

    :goto_1a
    const/16 v16, 0x0

    goto :goto_1b

    :cond_33
    move v5, v6

    goto :goto_1a

    :goto_1b
    cmpl-float v7, v5, v16

    if-eqz v7, :cond_3a

    cmpl-float v7, v5, v25

    if-eqz v7, :cond_3a

    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->c:I

    if-eq v7, v13, :cond_3a

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->v:F

    mul-float/2addr v4, v8

    const/16 v18, 0x1

    aget v8, v9, v18

    div-float/2addr v4, v8

    float-to-double v8, v5

    cmpg-double v5, v8, v22

    if-gez v5, :cond_34

    const/4 v5, 0x0

    :goto_1c
    const/4 v11, 0x6

    goto :goto_1d

    :cond_34
    move/from16 v5, v25

    goto :goto_1c

    :goto_1d
    if-ne v7, v11, :cond_36

    add-float v5, v6, v4

    const/16 v16, 0x0

    cmpg-float v5, v5, v16

    if-gez v5, :cond_35

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    :cond_35
    move/from16 v5, v25

    :cond_36
    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->c:I

    const/4 v12, 0x7

    if-ne v7, v12, :cond_38

    add-float v5, v6, v4

    cmpl-float v5, v5, v25

    if-lez v5, :cond_37

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    neg-float v4, v4

    :cond_37
    const/4 v5, 0x0

    :cond_38
    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->c:I

    mul-float v4, v4, v21

    invoke-virtual {v10, v5, v4, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E(FFI)V

    const/16 v16, 0x0

    cmpl-float v3, v16, v6

    if-gez v3, :cond_39

    cmpg-float v3, v25, v6

    if-gtz v3, :cond_5f

    :cond_39
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/16 :goto_2c

    :cond_3a
    const/16 v16, 0x0

    cmpl-float v3, v16, v5

    if-gez v3, :cond_3b

    cmpg-float v3, v25, v5

    if-gtz v3, :cond_5f

    :cond_3b
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/16 :goto_2c

    :cond_3c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->p:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->q:F

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    goto/16 :goto_2c

    :cond_3d
    move/from16 v25, v11

    const/16 v5, 0x3e8

    const/4 v11, 0x6

    const/4 v12, 0x7

    const-wide v28, 0x3f847ae147ae147bL    # 0.01

    move-object v14, v4

    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    iget-object v4, v14, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_3e

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v6, 0x1

    if-eq v4, v6, :cond_4f

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3f

    goto/16 :goto_2c

    :cond_3f
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->q:F

    sub-float v13, v4, v6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->p:F

    sub-float v15, v4, v6

    iget v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    mul-float/2addr v4, v15

    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->l:F

    mul-float/2addr v6, v13

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->x:F

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_40

    iget-boolean v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    if-eqz v4, :cond_5f

    :cond_40
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget-boolean v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    if-nez v4, :cond_41

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    invoke-virtual {v10, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_41
    move/from16 v31, v5

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_42

    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->h:F

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->g:F

    move/from16 v19, v13

    move/from16 v13, v31

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    const/16 v18, 0x1

    const/16 v20, 0x0

    goto :goto_1e

    :cond_42
    move/from16 v19, v13

    move/from16 v13, v31

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->l:F

    mul-float/2addr v5, v4

    const/16 v18, 0x1

    aput v5, v9, v18

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    mul-float/2addr v4, v5

    const/16 v20, 0x0

    aput v4, v9, v20

    :goto_1e
    iget v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    aget v5, v9, v20

    mul-float/2addr v4, v5

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->l:F

    aget v7, v9, v18

    mul-float/2addr v5, v7

    add-float/2addr v5, v4

    iget v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->v:F

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v28

    const v5, 0x3c23d70a    # 0.01f

    const/16 v20, 0x0

    if-gez v4, :cond_43

    aput v5, v9, v20

    aput v5, v9, v18

    :cond_43
    iget v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_44

    aget v4, v9, v20

    div-float/2addr v15, v4

    goto :goto_1f

    :cond_44
    aget v4, v9, v18

    div-float v15, v19, v4

    :goto_1f
    add-float/2addr v6, v15

    move/from16 v4, v25

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->c:I

    if-ne v6, v11, :cond_45

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_45
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->c:I

    if-ne v5, v12, :cond_46

    const v5, 0x3f7d70a4    # 0.99f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_46
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v5

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_4e

    const/16 v16, 0x0

    cmpl-float v6, v5, v16

    if-eqz v6, :cond_47

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v25

    if-nez v5, :cond_49

    :cond_47
    if-nez v6, :cond_48

    const/4 v5, 0x1

    goto :goto_20

    :cond_48
    const/4 v5, 0x0

    :goto_20
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(Z)V

    :cond_49
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v4, v14, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_4a

    invoke-virtual {v4, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_4a
    iget-object v4, v14, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    goto :goto_21

    :cond_4b
    const/4 v4, 0x0

    :goto_21
    iget-object v5, v14, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_4c

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    goto :goto_22

    :cond_4c
    const/4 v5, 0x0

    :goto_22
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4d

    const/16 v20, 0x0

    aget v5, v9, v20

    div-float/2addr v4, v5

    goto :goto_23

    :cond_4d
    const/16 v18, 0x1

    aget v4, v9, v18

    div-float v4, v5, v4

    :goto_23
    iput v4, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    goto :goto_24

    :cond_4e
    const/4 v7, 0x0

    iput v7, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    :goto_24
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->p:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->q:F

    goto/16 :goto_2c

    :cond_4f
    move v15, v13

    const/4 v6, 0x0

    move v13, v5

    iput-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    iget-object v4, v14, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_50

    invoke-virtual {v4, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_50
    iget-object v4, v14, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_51

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    move v13, v4

    goto :goto_25

    :cond_51
    const/4 v13, 0x0

    :goto_25
    iget-object v4, v14, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_52

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    move v14, v4

    goto :goto_26

    :cond_52
    const/4 v14, 0x0

    :goto_26
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_53

    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->h:F

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->g:F

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    const/16 v18, 0x1

    const/16 v20, 0x0

    goto :goto_27

    :cond_53
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->l:F

    mul-float/2addr v5, v4

    const/16 v18, 0x1

    aput v5, v9, v18

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    mul-float/2addr v4, v5

    const/16 v20, 0x0

    aput v4, v9, v20

    :goto_27
    iget v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->k:F

    aget v5, v9, v20

    aget v7, v9, v18

    const/16 v16, 0x0

    cmpl-float v4, v4, v16

    if-eqz v4, :cond_54

    div-float/2addr v13, v5

    goto :goto_28

    :cond_54
    div-float v13, v14, v7

    :goto_28
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_55

    div-float v4, v13, v21

    add-float/2addr v4, v6

    :goto_29
    const/16 v16, 0x0

    goto :goto_2a

    :cond_55
    move v4, v6

    goto :goto_29

    :goto_2a
    cmpl-float v5, v4, v16

    if-eqz v5, :cond_5c

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v25

    if-eqz v5, :cond_5c

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->c:I

    if-eq v5, v15, :cond_5c

    float-to-double v7, v4

    cmpg-double v4, v7, v22

    if-gez v4, :cond_56

    const/4 v4, 0x0

    goto :goto_2b

    :cond_56
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2b
    if-ne v5, v11, :cond_58

    add-float v4, v6, v13

    const/16 v16, 0x0

    cmpg-float v4, v4, v16

    if-gez v4, :cond_57

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    :cond_57
    const/high16 v4, 0x3f800000    # 1.0f

    :cond_58
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->c:I

    if-ne v5, v12, :cond_5a

    add-float v4, v6, v13

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v25

    if-lez v4, :cond_59

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    neg-float v13, v4

    :cond_59
    const/4 v4, 0x0

    :cond_5a
    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->c:I

    invoke-virtual {v10, v4, v13, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E(FFI)V

    const/16 v16, 0x0

    cmpl-float v3, v16, v6

    if-gez v3, :cond_5b

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v3, v25, v6

    if-gtz v3, :cond_5f

    :cond_5b
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_2c

    :cond_5c
    const/16 v16, 0x0

    cmpl-float v3, v16, v4

    if-gez v3, :cond_5d

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v3, v25, v4

    if-gtz v3, :cond_5f

    :cond_5d
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_2c

    :cond_5e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->p:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->q:F

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    :cond_5f
    :goto_2c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->r:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->s:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_61

    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    if-eqz v1, :cond_61

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_60

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->a:Landroid/view/VelocityTracker;

    goto :goto_2d

    :cond_60
    const/4 v3, 0x0

    :goto_2d
    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v7, -0x1

    if-eq v1, v7, :cond_61

    invoke-virtual {v2, v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    :cond_61
    :goto_2e
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_62

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->m:Z

    return v0

    :cond_62
    const/16 v18, 0x1

    return v18

    :cond_63
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    if-eqz v0, :cond_4

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c1:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c1:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d1:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d1:Ljava/util/ArrayList;

    :cond_3
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d1:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c1:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d1:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final r(F)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    if-eqz v1, :cond_1

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v3, :cond_3

    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    goto :goto_1

    :cond_3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->j:I

    :goto_1
    int-to-float v0, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->d()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final requestLayout()V
    .locals 4

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_2

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionController;->d:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final s(Z)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->b:Landroid/view/View;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/Debug;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "button"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->A:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v4, :cond_1

    move v4, v1

    :goto_1
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->A:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    if-eqz p1, :cond_0

    const/high16 v6, -0x3d380000    # -100.0f

    goto :goto_2

    :cond_0
    const/high16 v6, 0x42c80000    # 100.0f

    :goto_2
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionController;->b:Landroid/view/View;

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->f(FLandroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x1:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d1:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c1:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    cmpl-float v3, p1, v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a:F

    return-void

    :cond_2
    if-gtz v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne v1, v2, :cond_3

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_7

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_4
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_6

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-ne v0, v1, :cond_5

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_7
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->f()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->p:Z

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->c(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B()V

    return-void
.end method

.method public setStartState(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    return-void

    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    return-void
.end method

.method public setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 4

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y1:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y1:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v()V

    return-void

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u()V

    :cond_4
    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget p1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iget p1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez p1, :cond_2

    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iput p0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    return-void

    :cond_3
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne p1, v0, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_6

    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->p:Z

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->c(Z)V

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->e(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B()V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_8

    cmpl-float v0, p1, v3

    if-nez v0, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(Z)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_2

    :cond_7
    cmpl-float v0, p1, v2

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(Z)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_8
    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_3

    :cond_9
    move v0, p1

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->a()V

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_b
    return-void
.end method

.method public setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 3

    .line 193
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 194
    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_0

    .line 195
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_0

    .line 196
    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->p:Z

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->c(Z)V

    .line 197
    :cond_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 198
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 199
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 200
    :cond_1
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    :goto_0
    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 201
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 202
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 203
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 204
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 205
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 206
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 207
    :goto_1
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_2

    .line 208
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    .line 209
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->g()I

    move-result p1

    .line 210
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 211
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez v1, :cond_4

    goto :goto_3

    .line 212
    :cond_4
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 213
    :goto_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-ne p1, v1, :cond_5

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne v2, v1, :cond_5

    return-void

    .line 214
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 215
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 216
    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->m(II)V

    .line 217
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 218
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 219
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    .line 220
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z1:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->e(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 221
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 222
    iput p1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->e:I

    .line 223
    iput v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->f:I

    .line 224
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->f()V

    .line 225
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    return-void

    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->j:I

    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "motion.progress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a:F

    const-string v1, "motion.velocity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->b:F

    const-string v1, "motion.StartState"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    const-string v1, "motion.EndState"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u1:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a()V

    :cond_1
    return-void
.end method

.method public final t(Z)V
    .locals 20

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    cmpg-float v3, v1, v5

    if-gez v3, :cond_1

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    :cond_1
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    if-eqz v3, :cond_28

    if-nez p1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_28

    :cond_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    const v10, 0x3089705f    # 1.0E-9f

    if-nez v3, :cond_3

    iget-wide v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    sub-long v11, v8, v11

    long-to-float v11, v11

    mul-float/2addr v11, v1

    mul-float/2addr v11, v10

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    div-float/2addr v11, v12

    goto :goto_0

    :cond_3
    move v11, v2

    :goto_0
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    add-float/2addr v12, v11

    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    if-eqz v13, :cond_4

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    :cond_4
    cmpl-float v13, v1, v2

    if-lez v13, :cond_5

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v14, v12, v14

    if-gez v14, :cond_6

    :cond_5
    cmpg-float v14, v1, v2

    if-gtz v14, :cond_7

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v14, v12, v14

    if-gtz v14, :cond_7

    :cond_6
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    move v14, v6

    goto :goto_1

    :cond_7
    move v14, v7

    :goto_1
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    const v15, 0x3727c5ac    # 1.0E-5f

    if-eqz v3, :cond_f

    if-nez v14, :cond_f

    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v14, :cond_d

    iget-wide v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    sub-long v11, v8, v11

    long-to-float v11, v11

    mul-float/2addr v11, v10

    invoke-interface {v3, v11}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    const/4 v11, 0x2

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/utils/StopLogic;

    if-ne v10, v12, :cond_9

    iget-object v10, v12, Landroidx/constraintlayout/motion/utils/StopLogic;->c:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {v10}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->b()Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v11

    goto :goto_2

    :cond_8
    move v10, v6

    goto :goto_2

    :cond_9
    move v10, v7

    :goto_2
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->a()F

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    mul-float/2addr v9, v12

    cmpg-float v9, v9, v15

    if-gtz v9, :cond_a

    if-ne v10, v11, :cond_a

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    :cond_a
    cmpl-float v9, v8, v2

    if-lez v9, :cond_b

    cmpl-float v9, v3, v5

    if-ltz v9, :cond_b

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    move v3, v5

    :cond_b
    cmpg-float v8, v8, v2

    if-gez v8, :cond_c

    cmpg-float v8, v3, v2

    if-gtz v8, :cond_c

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    move v12, v2

    goto :goto_5

    :cond_c
    move v12, v3

    goto :goto_5

    :cond_d
    invoke-interface {v3, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->a()F

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    goto :goto_3

    :cond_e
    add-float/2addr v12, v11

    invoke-interface {v8, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    sub-float/2addr v8, v3

    mul-float/2addr v8, v1

    div-float/2addr v8, v11

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    :goto_3
    move v12, v3

    :goto_4
    move v10, v7

    goto :goto_5

    :cond_f
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    goto :goto_4

    :goto_5
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v15

    if-lez v3, :cond_10

    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_10
    if-eq v10, v6, :cond_15

    if-lez v13, :cond_11

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v3, v12, v3

    if-gez v3, :cond_12

    :cond_11
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_13

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_13

    :cond_12
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    :cond_13
    cmpl-float v3, v12, v5

    if-gez v3, :cond_14

    cmpg-float v3, v12, v2

    if-gtz v3, :cond_15

    :cond_14
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v16

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r1:F

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    if-nez v8, :cond_16

    move v15, v12

    goto :goto_6

    :cond_16
    invoke-interface {v8, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    move v15, v8

    :goto_6
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    if-eqz v8, :cond_17

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    div-float v9, v1, v9

    add-float/2addr v9, v12

    invoke-interface {v8, v9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    invoke-interface {v9, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    :cond_17
    move v8, v7

    :goto_7
    if-ge v8, v3, :cond_19

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v14, :cond_18

    iget-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s1:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Landroidx/constraintlayout/motion/widget/MotionController;->d(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v9

    or-int/2addr v9, v10

    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_19
    if-lez v13, :cond_1a

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v3, v12, v3

    if-gez v3, :cond_1b

    :cond_1a
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_1c

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_1c

    :cond_1b
    move v3, v6

    goto :goto_8

    :cond_1c
    move v3, v7

    :goto_8
    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    if-nez v8, :cond_1d

    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    if-nez v8, :cond_1d

    if-eqz v3, :cond_1d

    sget-object v8, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_1d
    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1:Z

    if-eqz v8, :cond_1e

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1e
    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    xor-int/2addr v3, v6

    or-int/2addr v3, v8

    iput-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    cmpg-float v3, v12, v2

    if-gtz v3, :cond_1f

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-eq v3, v4, :cond_1f

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-eq v4, v3, :cond_1f

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v7, v6

    :cond_1f
    float-to-double v3, v12

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v8

    if-ltz v3, :cond_20

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-eq v3, v4, :cond_20

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v7, v6

    :cond_20
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    if-nez v3, :cond_24

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    if-eqz v3, :cond_21

    goto :goto_9

    :cond_21
    if-lez v13, :cond_22

    cmpl-float v3, v12, v5

    if-eqz v3, :cond_23

    :cond_22
    cmpg-float v3, v1, v2

    if-gez v3, :cond_25

    cmpl-float v3, v12, v2

    if-nez v3, :cond_25

    :cond_23
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_a

    :cond_24
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_25
    :goto_a
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b1:Z

    if-nez v3, :cond_28

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    if-nez v3, :cond_28

    if-lez v13, :cond_26

    cmpl-float v3, v12, v5

    if-eqz v3, :cond_27

    :cond_26
    cmpg-float v1, v1, v2

    if-gez v1, :cond_28

    cmpl-float v1, v12, v2

    if-nez v1, :cond_28

    :cond_27
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z()V

    :cond_28
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v3, v1, v5

    if-ltz v3, :cond_2a

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-eq v1, v2, :cond_29

    goto :goto_b

    :cond_29
    move v6, v7

    :goto_b
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    :goto_c
    move v7, v6

    goto :goto_e

    :cond_2a
    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2c

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-eq v1, v2, :cond_2b

    goto :goto_d

    :cond_2b
    move v6, v7

    :goto_d
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    goto :goto_c

    :cond_2c
    :goto_e
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A1:Z

    or-int/2addr v1, v7

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A1:Z

    if-eqz v7, :cond_2d

    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t1:Z

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_2d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-static {v2, v0}, Landroidx/constraintlayout/motion/widget/Debug;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-static {v2, v0}, Landroidx/constraintlayout/motion/widget/Debug;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i1:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i1:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1:F

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e1:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i1:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-eq v2, v3, :cond_2

    if-eq v3, v1, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v1:Lw21;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lw21;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v1:Lw21;

    :cond_3
    return-void
.end method

.method public final w(IFFF[F)V
    .locals 14

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz p0, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->v:[F

    move/from16 v3, p2

    invoke-virtual {p0, v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->a(F[F)F

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    aget-object v4, v4, v5

    float-to-double v6, v3

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    invoke-virtual {v4, v6, v7, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->e(D[D)V

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v3, v3, v5

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    invoke-virtual {v3, v6, v7, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->c(D[D)V

    aget v2, v2, v5

    :goto_0
    iget-object v12, p0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    array-length v3, v12

    if-ge v5, v3, :cond_0

    aget-wide v3, v12, v5

    float-to-double v8, v2

    mul-double/2addr v3, v8

    aput-wide v3, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->k:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    array-length v4, v3

    if-lez v4, :cond_3

    invoke-virtual {v2, v6, v7, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->c(D[D)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->k:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    invoke-virtual {v2, v6, v7, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->e(D[D)V

    iget-object v11, p0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    iget-object v12, p0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    iget-object v13, p0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->e(FF[F[I[D[D)V

    goto :goto_1

    :cond_1
    iget-object v11, p0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    iget-object v13, p0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->e(FF[F[I[D[D)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    sub-float/2addr v2, v3

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    sub-float/2addr v3, v4

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    iget v6, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    sub-float/2addr v4, v6

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    sub-float/2addr p0, v1

    add-float/2addr v4, v2

    add-float/2addr p0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v1, p3

    mul-float/2addr v6, v2

    mul-float v4, v4, p3

    add-float/2addr v4, v6

    aput v4, p5, v5

    sub-float v1, v1, p4

    mul-float/2addr v1, v3

    mul-float p0, p0, p4

    add-float/2addr p0, v1

    const/4 v1, 0x1

    aput p0, p5, v1

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    return-void

    :cond_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    return-void
.end method

.method public final x(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v4, v5, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B1:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, p2, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_2

    :cond_3
    invoke-static {p4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D1:Landroid/graphics/Matrix;

    if-nez p1, :cond_4

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D1:Landroid/graphics/Matrix;

    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D1:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D1:Landroid/graphics/Matrix;

    invoke-virtual {p4, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->recycle()V

    :goto_2
    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final y(Landroid/util/AttributeSet;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F1:Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/widget/R$styleable;->o:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x1

    move v4, v1

    move v5, v3

    :goto_0
    if-ge v4, v2, :cond_7

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    goto :goto_2

    :cond_0
    if-ne v6, v3, :cond_1

    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    goto :goto_2

    :cond_1
    const/4 v8, 0x4

    if-ne v6, v8, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    goto :goto_2

    :cond_3
    const/4 v8, 0x5

    if-ne v6, v8, :cond_5

    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    if-nez v8, :cond_6

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    goto :goto_2

    :cond_5
    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v5, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    :cond_8
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p1, :cond_9

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->g()I

    move-result p1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/constraintlayout/motion/widget/Debug;->b(ILandroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v3, v1

    :goto_3
    if-ge v3, p1, :cond_b

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->k(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    if-nez v5, :cond_a

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/Debug;->c(Landroid/view/View;)Ljava/lang/String;

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    iget-object p1, v2, Landroidx/constraintlayout/widget/ConstraintSet;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Integer;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    array-length v3, p1

    new-array v4, v3, [I

    move v5, v1

    :goto_4
    if-ge v5, v3, :cond_c

    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    if-ge v1, v3, :cond_d

    aget p1, v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p1, v5}, Landroidx/constraintlayout/motion/widget/Debug;->b(ILandroid/content/Context;)Ljava/lang/String;

    aget v5, v4, v1

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->j(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->e:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d:I

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->j(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p1

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->e:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/constraintlayout/motion/widget/Debug;->b(ILandroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/constraintlayout/motion/widget/Debug;->b(ILandroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->get(I)I

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    invoke-virtual {p1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_6

    :cond_e
    :goto_7
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->g()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->g()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez p1, :cond_f

    goto :goto_8

    :cond_f
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    :cond_10
    return-void
.end method

.method public final z()V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->f:Ljava/util/ArrayList;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->c:I

    if-ne v7, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->c:I

    if-ne v7, v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-virtual {v7, p0, v0, v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-virtual {v6, p0, v0, v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->n()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p0, :cond_f

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p0, :cond_f

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    if-eq v3, v2, :cond_e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->d:I

    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/Debug;->b(ILandroid/content/Context;)Ljava/lang/String;

    :cond_e
    instance-of p0, v1, Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_f

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    new-instance p0, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p0, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    :cond_f
    :goto_4
    return-void
.end method
