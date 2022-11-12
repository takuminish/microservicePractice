import express from 'express';

const app: express.Express = express();

app.use(express.json())
app.use(express.urlencoded({ extended: true }))

/**
 * 4203ポートで動作させる
 */
app.listen(4203, () => {
    console.log('start company service');
});

/**
 * path: /
 * 企業リストを取得する
 */
app.get('/', (req: express.Request, res: express.Response) => {
    const companyList: Company[] = [
        {
            companyId: 1,
            companyName: '企業1',
            createdAt: new Date(),
            updatedAt: new Date()
        },
        {
            companyId: 2,
            companyName: '企業2',
            createdAt: new Date(),
            updatedAt: new Date()
        }
    ]


    res.send(JSON.stringify({ companys: companyList }));

})

/**
 * 企業モデル
 */
interface Company {
    /** ID */
    companyId: number;

    /** 企業名 */
    companyName: string;

    /** 作成日時 */
    createdAt: Date;

    /** 更新日時 */
    updatedAt: Date;
}
