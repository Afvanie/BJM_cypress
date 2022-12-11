describe("My First Test", () => {
    it("First test cypress", () => {
      cy.visit("http://127.0.0.1:8000/");
      cy.contains("Login").click();
      cy.url().should("include", "/login")
      cy.get('input[name="email"]').type('ayu@gmail.com');
      cy.get('input[name="password"]').type('1234').type('{enter}');
    });
 });

//  describe("Test Fitur Service Panggilan", () => {
//     it("First test cypress", () => {
//       cy.visit("http://127.0.0.1:8000/servispanggilan");
//       cy.get('input[name="email"]').type('Ayu@gmail.com');
//       cy.get('input[name="password"]').type('1234').type('{enter}');
//       cy.get('input[name="nope"]').type('082140551074',{force:true});
//       cy.get('input[name="lokasi"]').type('5657',{force:true}).type('{enter}');;
//     });
//  });

//  describe("Tes Fitur Rincian Biaya", () => {
//     it("First test cypress", () => {
//       cy.visit("http://127.0.0.1:8000/rincianbiaya/create");
//       cy.get('input[name="email"]').type('Ayu@gmail.com');
//       cy.get('input[name="password"]').type('1234').type('{enter}');
//       cy.get('#sparepart_id',{force: true}).select('LCD',{force: true}).should('have.value', '1');
//       cy.get('#service_id',{force: true}).select('Ganti Oli Mesin Mobil',{force: true}).should('have.value', '1');
//     //   cy.get('input[name="tanggal"]').type('2020-01-01').trigger('keydown', {key: 'Enter',});
//       cy.get('input[name="tanggal"]').type('2022-12-02',{force: true});
//       cy.contains("Submit").click({force: true});
//       cy.url().should("include", "/rincianbiaya")
//     });
//  });
 

//  describe("Tes Fitur Diagnosa Kerusakan", () => {
//     it("First test cypress", () => {
//       cy.visit("http://127.0.0.1:8000/diagnosauser");
//       cy.get('input[name="email"]').type('Ayu@gmail.com');
//       cy.get('input[name="password"]').type('1234').type('{enter}');
//       cy.get('input[type="checkbox"]').check('G1',{force: true});
//       cy.get('input[type="checkbox"]').check('G2',{force: true});
//       cy.get('input[type="checkbox"]').check('G3',{force: true});
//       cy.get('input[type="checkbox"]').check('G4',{force: true});
//       cy.contains("Mulai Diagnosa").click({force: true});
//     });
//  });

//  describe("Tes Fitur Cetak Rincian Biaya", () => {
//     it("First test cypress", () => {
//       cy.visit("http://127.0.0.1:8000/rincianbiaya");
//       cy.get('input[name="email"]').type('Ayu@gmail.com');
//       cy.get('input[name="password"]').type('1234').type('{enter}');
//       cy.contains("Cetak Laporan").click({force: true});
//       cy.get('#tipe',{force: true}).select('Rincian Biaya',{force: true}).should('have.value', 'rincianbiaya');
//       cy.contains("Cetak").click({force: true});
//     });
//  });

// describe("Cek Fungsionalitas Fitur", () => {
//     it("Cek", () => {
//       cy.visit("http://127.0.0.1:8000/datacustomer/create");
//       cy.get('input[name="email"]').type('jumain@gmail.com');
//       cy.get('input[name="password"]').type('1234').type('{enter}');
//       cy.url().should("include", "/datacustomer/create");
//       cy.get('input[name="nama"]').type('afvanie');
//       cy.get('input[name="alamat"]').type('kejapanan');
//       cy.get('input[name="notelp"]').type('0821401552').type('{enter}');
//   });
//   });
  
  // describe("Cek Fungsionalitas Fitur", () => {
  //   it("Cek", () => {
  //     cy.visit("http://127.0.0.1:8000/datapenyakit/create");
  //     cy.get('input[name="email"]').type('jumain@gmail.com');
  //     cy.get('input[name="password"]').type('1234').type('{enter}');
  //     cy.url().should("include", "/datapenyakit/create");
  //     cy.get('input[name="kd_penyakit"]').type('02');
  //     cy.get('input[name="penyakit"]').type('pnykt2');
  //     cy.get('input[name="definisi"]').type('deinisii2');
  //     cy.get('input[name="solusi"]').type('solusi1').type('{enter}');
  // });
  // });

//   describe("Cek Fungsionalitas Fitur", () => {
//     it("Data User", () => {
//   cy.visit("http://127.0.0.1:8000/datapegawai/create")
//   cy.get('input[name="email"]').type('jumain@gmail.com');
//   cy.get('input[name="password"]').type('1234').type('{enter}');
//   cy.get('input[name="nama"]').type('Rendy Pandugo',{force:true});
//   cy.get('input[name="email"]').type('rendy@gmail.com',{force:true});
//   cy.get('input[name="password"]').type('1234',{force:true});
//   cy.get('#level').select('admin').should('have.value', 'Admin',{force:true});
//   cy.get('input[name="tanggal_join"]').type('2022-12-02').type('{enter}');
//   cy.url().should("include", "/datapegawai");
//     });
//   });